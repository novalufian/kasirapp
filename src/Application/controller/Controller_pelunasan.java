package Application.controller;


import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
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
import java.text.DecimalFormat;
import java.util.ResourceBundle;

public class Controller_pelunasan implements Initializable {

    Error_template error_template = new Error_template();
    ConnectionClass connectionClass = new ConnectionClass();
    Connection connection = connectionClass.getConnection();

    Model_pembayaran model_pembayaran;

    public Controller_pelunasan(Model_pembayaran pembayaran) {
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
        if (isNumber){
            String tunai = bayartunai.getText();
            try {
                Integer kb = 0;
                kb = Integer.parseInt(tunai) - Math.abs(model_pembayaran.getPiutang_sisa());

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

    void validatePembayaran(){}


    void setValue(){
        Integer x = model_pembayaran.getPiutang_sisa();
        x = Math.abs(x);
        idMember.setText(model_pembayaran.getMember());
        totalBelanja.setText(x.toString());

        if (model_pembayaran.getCara_pembayaran()){
            status.setText("belum lunas");
        }

        Platform.runLater(()->{
            bayartunai.requestFocus();
        });

        System.out.println(model_pembayaran.getId());
    }
}
