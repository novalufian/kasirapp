package Application.controller;

import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.libs.Global_share_variable;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.text.Text;
import javafx.stage.Stage;

import java.net.URL;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.Random;
import java.util.ResourceBundle;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class Controller_pembayaran implements Initializable {

    private static Stage myStage ;
    private static Integer globalTotalBlanja = 0;
    public static Error_template error_template = new Error_template();

    @FXML
    private TextField vocher;

    @FXML
    private TextField debitCard;

    @FXML
    private Text kembalian;

    @FXML
    private TextField noKartu;

    @FXML
    private TextField bayartunai;

    @FXML
    private ComboBox<String> caraPembayaran;

    @FXML
    private Text status;

    @FXML
    private Button btnSImpan;

    @FXML
    private Button btnCetakStruk;

    @FXML
    private TextField totalBelanja;

    @FXML
    private DatePicker jatuhTempo;

    @FXML
    void cetakStrukPenjualan(ActionEvent event) {

    }

    @FXML
    void simpanPenjualan(ActionEvent event) {
        Boolean carabayar = true;
        LocalDate _jtauhtempo = null;
        if(caraPembayaran.getValue() == "angsur"){
            carabayar = false;
            _jtauhtempo = jatuhTempo.getValue();
        }

        int piutangsisa = 0;
        if((globalTotalBlanja - Integer.parseInt(bayartunai.getText())) > 0){
            piutangsisa = globalTotalBlanja - Integer.parseInt(bayartunai.getText());

        }

        String idPenjualan = Global_share_variable.getIdPenjualan();

        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();

        try {
            String sql = "INSERT INTO penjualan " +
                    "(id_penjualan, id_member, no_faktur_penjualan, total_pembelian, cara_pembayaran, piutang_jatuh_tempo, jumlah_terbayar, piutang_sisa, id_kasir) " +
                    "VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "PJL-"+ idPenjualan);
            statement.setString(2, "");
            statement.setString(3, idPenjualan);
            statement.setInt(4, globalTotalBlanja);
            statement.setBoolean(5, carabayar);
            statement.setDate(6, null);
            statement.setInt(7,Integer.parseInt(bayartunai.getText()));
            statement.setInt(8, piutangsisa);
            statement.setString(9, Global_share_variable.getIdKasir());

            int rs = statement.executeUpdate();
            if (rs > 0){
                doSimpanDetail("PJL-"+ idPenjualan);
            }else{
                error_template.warning("Peringatan", "terdapan kesalahan penyimpanan, periksa jaringan / koneksi anda");
            }

        }catch (Exception e){
            error_template.error(e);
        }

    }

    private void doSimpanDetail(String id){
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();

        AtomicInteger index = new AtomicInteger();
        Global_share_variable.getCart().forEach(item ->{
            try {
                String sql = "INSERT INTO detail_penjualan " +
                        "(id_detail_penjualan, id_penjualan, id_barang, kategori_barang_id, nama_barang, harga_jual, quantity, harga_total) " +
                        "VALUES (?,?,?,?,?,?,?,?)";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, "DPJL-"+System.currentTimeMillis()+""+new Random().nextInt(99999999));
                statement.setString(2, id);
                statement.setString(3, item.getId());
                statement.setString(4, item.getKodeKategori());
                statement.setString(5, item.getNama());
                statement.setInt(6, item.getHarga());
                statement.setInt(7, item.getJumlah());
                statement.setInt(8, item.getTotalharga());

                int rs = statement.executeUpdate();
                if (rs > 0){
                    index.getAndIncrement();
                    Integer x = Integer.parseInt(String.valueOf(index));

                    if(x.equals(Global_share_variable.getCart().size())){
                        error_template.success("Info", "data berhasil disimpan");
                        btnSImpan.setDisable(true);
                        btnCetakStruk.setDisable(false);

                    }
                }else{
                    error_template.warning("Peringatan", "gagal disimpan, cob lagi");
                }

            }catch (Exception e){
                error_template.error(e);
            }
        });


    }


    @FXML
    void onBayarTunai(KeyEvent event) {
        Boolean isNumber = bayartunai.getText().matches("[0-9]*");
        if (isNumber){
            String tunai = bayartunai.getText();
            Integer kb = 0;
            kb = Integer.parseInt(tunai) - globalTotalBlanja;

                DecimalFormat formatter = new DecimalFormat("#,###");
                String newValueStr = formatter.format(Double.parseDouble(kb.toString()));

                kembalian.setText("Rp.  " + newValueStr + ",-");
        }else{
            error_template.warning("Ooooppss !", "input harus angka");
        }


    }

    public void setStage(Stage stage){
        this.myStage = stage;
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        bayartunai.requestFocus();

        ObservableList pembayaran = FXCollections.observableArrayList("tunai", "angsuran");
        caraPembayaran.setItems(pembayaran);
        caraPembayaran.getSelectionModel().select(0);

        AtomicReference<Integer> tb = new AtomicReference<>(0);
        Global_share_variable.getCart().forEach(item -> {
            tb.updateAndGet(v -> v + item.getTotalharga());
        });

        if (tb.toString().matches("\\d*")) {
            globalTotalBlanja = Integer.parseInt(String.valueOf(tb));

            DecimalFormat formatter = new DecimalFormat("#,###");
            String newValueStr = formatter.format(Double.parseDouble(tb.toString()));

            totalBelanja.setText("Rp.  " + newValueStr + ",-");
            totalBelanja.setDisable(true);
        }

        jatuhTempo.setValue(LocalDate.now());
        btnCetakStruk.setDisable(true);

        Global_share_variable.getPembayaranStage().addEventFilter(KeyEvent.KEY_PRESSED, event -> {
            if (event.getCode().equals(KeyCode.F10)){
                error_template.success("INFO", "sedang mencetak struk");
//                do cedak struk
            }
        });

    }

}