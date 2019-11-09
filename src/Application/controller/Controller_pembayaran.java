package Application.controller;

import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.libs.Global_share_variable;
import javafx.application.Platform;
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
import java.sql.*;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.Random;
import java.util.ResourceBundle;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class Controller_pembayaran implements Initializable {

    private static Integer globalTotalBlanja = 0;
    public static Error_template error_template = new Error_template();

    ConnectionClass connectionClass = new ConnectionClass();
    Connection connection = connectionClass.getConnection();

    Controller_main controller_main;

    public Controller_pembayaran(Controller_main cmain) {
        controller_main = cmain;
    }

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
        doCetakStruk();
    }

    public void doCetakStruk(){
        if(btnSImpan.isDisabled()){
            error_template.success("INFO", "sedang mencetak struk");
        }else{
            error_template.warning("Peringatan", "Silakan proses penjualan terlebih dahulu");
        }
    }

    @FXML
    void simpanPenjualan(ActionEvent event) {
        validatePembayaran();
    }

    public void validatePembayaran(){
        if (btnSImpan.isDisabled()){
            error_template.warning("Peringatan", "pembayaran sudah diproses");
        }else{

            if(bayartunai.getText().isEmpty()){
                error_template.warning("Peringatan", "sialahkan masukkan nominal pembayaran");
            }else{
                btnSImpan.setDisable(true);
                if((Integer.parseInt(bayartunai.getText()) - globalTotalBlanja) > 0){
                    System.out.println((Integer.parseInt(bayartunai.getText()) - globalTotalBlanja));
                    doSimpanData();
                }else{
                    if (caraPembayaran.getValue()=="tunai"){
                        error_template.warning("Peringatan", "jumlah tunai tidak valid");
                        btnSImpan.setDisable(false);
                    }else{
                        doSimpanData();
                    }
                }
            }

        }
    }

    public void doSimpanData(){
        Boolean carabayar = true;
        LocalDate _jtauhtempo = jatuhTempo.getValue();
        if(caraPembayaran.getValue() == "angsuran"){
            carabayar = false;
        }

        String idPenjualan = Global_share_variable.getIdPenjualan();

        int piutangsisa = 0;
        if((globalTotalBlanja - Integer.parseInt(bayartunai.getText())) > 0){
            piutangsisa = globalTotalBlanja - Integer.parseInt(bayartunai.getText());
        }

        try {
            connection.setAutoCommit(false);

            String sql = "INSERT INTO penjualan " +
                    "(id_penjualan, id_member, no_faktur_penjualan, total_pembelian, cara_pembayaran, piutang_jatuh_tempo, jumlah_terbayar, piutang_sisa, id_kasir) " +
                    "VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "PJL-"+ idPenjualan);
            statement.setString(2, controller_main.kodePelanggan.getText());
            statement.setString(3, idPenjualan);
            statement.setInt(4, globalTotalBlanja);
            statement.setBoolean(5, carabayar);
            statement.setDate(6, Date.valueOf(_jtauhtempo));
            statement.setInt(7,Integer.parseInt(bayartunai.getText()));
            statement.setInt(8, piutangsisa);
            statement.setString(9, Global_share_variable.getIdKasir());

            int rs = statement.executeUpdate();
            if (rs > 0){
                doSimpanDetail("PJL-"+ idPenjualan);
            }else{
                error_template.warning("Peringatan", "terdapan kesalahan penyimpanan, periksa jaringan / koneksi anda");
                btnSImpan.setDisable(false);
                connection.rollback();
            }

            connection.commit();
            connection.setAutoCommit(true);

        }catch (Exception e){
            error_template.error(e);
            btnSImpan.setDisable(false);

            try {
                connection.rollback();
            } catch (SQLException ex) {
                error_template.error(ex);

            }
        }

    }

    private void doSimpanDetail(String id){
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        try {
            connection.setAutoCommit(false);

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
                        btnSImpan.setDisable(false);

                        connection.rollback();
                    }

                }catch (Exception e){
                    btnSImpan.setDisable(false);
                    try {
                        connection.rollback();
                    } catch (SQLException ex) {
                        error_template.error(ex);

                    }
                }
            });

            connection.commit();
            connection.setAutoCommit(true);
        }catch (Exception e){
        }



    }

    @FXML
    void onBayarTunai(KeyEvent event) {
        Boolean isNumber = bayartunai.getText().matches("[0-9]*");
        if (isNumber){
            String tunai = bayartunai.getText();
            try {
                Integer kb = 0;
                kb = Integer.parseInt(tunai) - globalTotalBlanja;

                DecimalFormat formatter = new DecimalFormat("#,###");
                String newValueStr = formatter.format(Double.parseDouble(kb.toString()));

                kembalian.setText("Rp.  " + newValueStr + ",-");
            }catch (Exception e){
            }

        }else{
            error_template.warning("Ooooppss !", "input harus angka");
        }

        if (event.getCode().equals(KeyCode.ENTER)){
            validatePembayaran();
        }


    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {

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

        btnCetakStruk.setDisable(true);

        Platform.runLater(()->{
            bayartunai.requestFocus();
            jatuhTempo.setValue(LocalDate.now());
            checkPembayaran();

        });
    }

    void checkPembayaran(){
        String idpenjualan = "PJL-"+ Global_share_variable.getIdPenjualan();

        try {
            String sql = "SELECT * FROM penjualan WHERE id_penjualan = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, idpenjualan);
            ResultSet rs = statement.executeQuery();

            if (rs.next()){
                btnCetakStruk.setDisable(false);
                btnSImpan.setDisable(true);

                Boolean a = rs.getBoolean("cara_pembayaran");
                String pembayaran = "tunai";
                if (!a){
                    pembayaran = "angsuran";
                }

                caraPembayaran.getSelectionModel().select(pembayaran);
                bayartunai.setText(String.valueOf(rs.getInt("jumlah_terbayar")));

            }
        }catch (Exception e){
            error_template.error(e);
            e.printStackTrace();
        }

    }

}