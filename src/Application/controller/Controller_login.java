package Application.controller;

import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.libs.Global_share_variable;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Optional;
import java.util.ResourceBundle;

public class Controller_login implements Initializable {
    private static Error_template error_template = new Error_template();

    @FXML
    private TextField username;

    @FXML
    private PasswordField password;

    @FXML
    void doLogin(ActionEvent evt) {
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();

        try {
            String sql = "SELECT * FROM user_login WHERE username = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username.getText());
            statement.setString(2, password.getText());

            System.out.println(username.getText() + " "+ password.getText());

            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                FXMLLoader fxmlLoader = new FXMLLoader();
                fxmlLoader.setLocation(getClass().getResource("/Application/view/main.fxml"));
                Scene scene = new Scene(fxmlLoader.load(), 1280, 840);
                Stage stage = (Stage) username.getScene().getWindow();
                stage.setScene(scene);
//                stage.setMaximized(true);

//                stage.addEventFilter(
//                        KeyEvent.KEY_RELEASED,
//                        event -> {
//                            switch (event.getCode()){
//                                case F1:
//                                    openCariBarang();
//                                    event.consume();
//                                    break;
//                                case F2:
//                                    openFormBayar();
//                                    event.consume();
//                                    break;
//                                case F3:
//                                    simpanTransaksi();
//                                    event.consume();
//                                    break;
//                                case F4:
//                                    createTransaksiBaru();
//                                    event.consume();
//                                    break;
//                                case F5:
//                                    openMemberArea();
//                                    event.consume();
//                                    break;
//                                case F12:
//                                    openMEmberSearch();
//                                    event.consume();
//                                    break;
//                            }
//                        }
//                );

            }
        }catch (Exception e){
            error_template.error(e);
            e.printStackTrace();
        }
    }

    void openMEmberSearch(){
        try {
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("/Application/view/carimember.fxml"));
            Scene scene = new Scene(fxmlLoader.load(), 700, 600);
            Stage stage = new Stage();
            stage.setTitle("New Window");
            stage.setScene(scene);
            if (!stage.isShowing()){
                stage.show();
            }else{
                error_template.success("Pemberitahuan", "form cari brang sudah tampil");
            }

            stage.setOnHidden(event1 -> {
            });

            stage.addEventFilter(KeyEvent.KEY_PRESSED, e ->{
                switch (e.getCode()){
                    case ESCAPE:
                        stage.close();
                        break;
                }
            });
        }catch (Exception e){
            error_template.error(e);
        }
    }


    void openCariBarang(){
        try {
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("/Application/view/barang.fxml"));
            Scene scene = new Scene(fxmlLoader.load(), 800, 600);
            Stage stage = new Stage();
            stage.setTitle("New Window");
            stage.setScene(scene);
            if (!stage.isShowing()){
                stage.show();
            }else{
                error_template.success("Pemberitahuan", "form cari brang sudah tampil");
            }

            stage.addEventFilter(KeyEvent.KEY_PRESSED, event ->{
                switch (event.getCode()){
                    case ESCAPE:
                        stage.close();
                        break;
                }
            });
        }catch (Exception e){
            error_template.error(e);
        }
    }

    private void openFormBayar(){
        if (Global_share_variable.getCart().size() > 0){
//            open form
            try {
                FXMLLoader fxmlLoader = new FXMLLoader();
                fxmlLoader.setLocation(getClass().getResource("/Application/view/pembayaran.fxml"));
                Scene scene = new Scene(fxmlLoader.load(), 600, 600);
                Stage stage = new Stage();
                stage.setTitle("New Window");
                stage.setScene(scene);
                Global_share_variable.setPembayaranStage(stage);
                Global_share_variable.setMainClass(getClass());

                stage.show();

                Controller_pembayaran controller_pembayaran = fxmlLoader.getController();

                stage.addEventFilter(KeyEvent.KEY_PRESSED, event -> {
                    switch (event.getCode()){
                        case F10:
                            controller_pembayaran.doCetakStruk();
                            break;
                        case F9:
                            controller_pembayaran.validatePembayaran();
                            break;

                        case ESCAPE:
                            stage.close();
                            break;
                    }
                });

            }catch (Exception e){
                error_template.error(e);
            }

        }else{
            error_template.warning("Peringatan", "Form bayar tidak dapat dibuka akrena tidak ada item di keranjang");
        }
    }

    private void simpanTransaksi(){}

    private void createTransaksiBaru(){
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Konfirmasi");
        alert.setContentText("apakah anda membuat transaksi baru");
        Optional<ButtonType> result = alert.showAndWait();
        if (result.get() == ButtonType.OK){
//            newcontroller.resetValue();
        } else {
            alert.close();
        }
    }

    private void openMemberArea(){
        try {
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("/Application/view/member.fxml"));
            Scene scene = new Scene(fxmlLoader.load(), 1000, 600);
            Stage stage = new Stage();
            stage.setTitle("Member area");
            stage.setScene(scene);
            if (!stage.isShowing()){
                stage.show();
            }else{
                error_template.success("Pemberitahuan", "form cari brang sudah tampil");
            }

            stage.addEventFilter(KeyEvent.KEY_PRESSED, event ->{
                switch (event.getCode()){
                    case ESCAPE:
                        stage.close();
                        break;
                }
            });
        }catch (Exception e){
            error_template.error(e);
        }
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {

    }
}
