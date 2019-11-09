package Application.controller;


import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.libs.Formatter;
import Application.model.Model_pembayaran;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.text.Text;
import javafx.event.ActionEvent;

import java.net.URL;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Random;
import java.util.ResourceBundle;

public class Controller_pelunasan implements Initializable {

    Error_template error_template = new Error_template();
    Formatter formatter = new Formatter();
    ConnectionClass connectionClass = new ConnectionClass();
    Connection connection = connectionClass.getConnection();

    Controller_piutang controller_piutang ;
    Model_pembayaran model_pembayaran;

    String idPiutang = null;

    public Controller_pelunasan(Model_pembayaran pembayaran, Controller_piutang cp) {
        controller_piutang = cp;
        model_pembayaran = pembayaran;
    }

    @FXML
    private Text kembalian;

    @FXML
    private Button btnSImpan;

    @FXML
    private DatePicker jatuhTempo;

    @FXML
    private TextField idMember;

    @FXML
    private TextField debitCard;

    @FXML
    private TextField totalBelanja;

    @FXML
    private TextField noKartu;

    @FXML
    private TextField vocher;

    @FXML
    private TextField bayartunai;

    @FXML
    private Text status;

    @FXML
    private Button btnCetakStruk;

    @FXML
    void onBayarTunai(KeyEvent event) {
        Boolean isNumber = bayartunai.getText().matches("[0-9]*");


        if (!event.getCode().isLetterKey()){
            String tunai = bayartunai.getText();
            try {
                Integer kb = 0;
                kb = Integer.parseInt(tunai) - Math.abs(model_pembayaran.getPiutang_sisa());
                kembalian.setText("Rp.  " + formatter.curencyFormater(kb) + ",-");

            }catch (Exception e){
            }
        }else{
            event.consume();
        }

        if (event.getCode().equals(KeyCode.ENTER)){
            validatePembayaran();
        }
    }

    @FXML
    void simpanPenjualan(ActionEvent event) {
        validatePembayaran();
    }

    @FXML
    void cetakStrukPenjualan(ActionEvent event) {

    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        setValue();
    }

    void validatePembayaran(){
        if (btnSImpan.isDisabled()){

            error_template.warning("peringatan", "maaf pembayaran piutang sudah diproses");

        }else{

            Integer x = Integer.parseInt(bayartunai.getText()) - Math.abs(model_pembayaran.getPiutang_sisa());
            String status = "belum lunas";
            if(x > 0){
                x =0;
                status = "lunas";
            }
            try {
                connection.setAutoCommit(false);

                String sql = "INSERT INTO piutang" +
                        "(id_piutang, no_faktur_penjualan, id_mitra, piutang_termin, piutang_jatuh_tempo, piutang_total_faktur, " +
                        "piutang_terbayar, piutang_sisa, piutang_status) " +
                        "VALUES (?,?,?,?,?,?,?,?,?)";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, idPiutang);
                statement.setString(2, model_pembayaran.getFaktur());
                statement.setString(3, model_pembayaran.getMember());
                statement.setString(4, "");
                statement.setDate(5, Date.valueOf(jatuhTempo.getValue()));
                statement.setInt(6, model_pembayaran.getTotal_pembelian());
                statement.setInt(7, Integer.parseInt(bayartunai.getText()));
                statement.setInt(8, x);
                statement.setString(9, status);

                int rs = statement.executeUpdate();
                if(rs > 0){

                    if (status.equals("lunas")){
                        if (updatePenjualan()){
                            error_template.success("Pemberitahuan", "pembayarna piutang termin : \n" +
                                    "status piutang : " + status.toUpperCase());
                            btnSImpan.setDisable(true);
                            bayartunai.setDisable(true);

                            connection.commit();

                        }else{
                            error_template.warning("Peringatan", "data gagal disimpan silahkan coba lagi");
                        }
                    }else{

                        error_template.success("Pemberitahuan", "pembayarna piutang termin : \n" +
                                "status piutang : " + status.toUpperCase());
                        btnSImpan.setDisable(true);
                        bayartunai.setDisable(true);

                        connection.commit();
                        connection.setAutoCommit(true);
                    }

                    String id = controller_piutang.tampilkanDataMember.getText();
                    controller_piutang.generateTable();
                    controller_piutang.genarateData("MTR-"+id);

                }else{
                    error_template.warning("Peringatan", "data gagal disimpan silahkan coba lagi");
                    connection.rollback();
                }
            }catch (Exception e){

                e.printStackTrace();
            }

        }

    }

    Boolean updatePenjualan(){
        Boolean ret = false;
        try {
            connection.setAutoCommit(false);

            String sql = "UPDATE penjualan SET keterangan = ?  WHERE id_penjualan = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "lunas");
            statement.setString(2, model_pembayaran.getId());

            int rs = statement.executeUpdate();
            if (rs > 0){
                connection.commit();
                connection.setAutoCommit(true);
                ret = true;
            }else{
                connection.rollback();
                ret = false;
            }

        }catch (Exception e ){
            try {
                connection.rollback();
            }catch (SQLException ex){
                error_template.error(ex);
                ex.printStackTrace();
            }
        }

        return ret;
    }


    void setValue(){
        idPiutang = "PTG-"+System.currentTimeMillis()+""+new Random().nextInt(9999);
        Integer x = model_pembayaran.getPiutang_sisa();
        x = Math.abs(x);
        idMember.setText(model_pembayaran.getMember());
        idMember.setDisable(true);
        totalBelanja.setText(formatter.curencyFormater(x));
        totalBelanja.setDisable(true);

        if (model_pembayaran.getCara_pembayaran()){
            status.setText("belum lunas");
        }

        Platform.runLater(()->{
            bayartunai.requestFocus();
            jatuhTempo.setValue(LocalDate.now());

        });

        System.out.println(model_pembayaran.getId());
    }
}
