package Application;

import Application.controller.Controller_main;
import Application.controller.Controller_pembayaran;
import Application.libs.Error_template;
import Application.libs.Global_share_variable;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;

import java.util.Optional;

public class Main extends Application {

    private static Error_template error_template = new Error_template();

    @Override
    public void start(Stage primaryStage) throws Exception{
        FXMLLoader fxmlLoader = new FXMLLoader();
        fxmlLoader.setLocation(getClass().getResource("view/main.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 1280, 860);
        primaryStage.setScene(scene);
        primaryStage.setTitle("Kasir app");
        primaryStage.show();

        Controller_main controller_main = fxmlLoader.getController();

//        primaryStage.setMaximized(true);

        primaryStage.addEventFilter(
                KeyEvent.KEY_RELEASED,
                event -> {
                    switch (event.getCode()){
                        case F2:
                            openFormBayar();
                            break;
                        case F3:
                            simpanTransaksi();
                            break;
                        case F4:
                            createTransaksiBaru(controller_main);
                            break;
                        case F5:
                            openMemberArea();
                            break;
                    }
                }
        );
    }

    private void openFormBayar(){
        if (Global_share_variable.getCart().size() > 0){
//            open form
            try {
                FXMLLoader fxmlLoader = new FXMLLoader();
                fxmlLoader.setLocation(getClass().getResource("view/pembayaran.fxml"));
                Scene scene = new Scene(fxmlLoader.load(), 600, 600);
                Stage stage = new Stage();
                stage.setTitle("New Window");
                stage.setScene(scene);
                Global_share_variable.setPembayaranStage(stage);
                stage.show();

                Controller_pembayaran controller_pembayaran = fxmlLoader.getController();
                controller_pembayaran.setStage(stage);

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

    private void createTransaksiBaru(Controller_main controller){
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Konfirmasi");
        alert.setContentText("apakah anda membuat transaksi baru");
        Optional<ButtonType> result = alert.showAndWait();
        if (result.get() == ButtonType.OK){
            controller.resetValue();
        } else {
            alert.close();
        }
    }

    private void openMemberArea(){}

    public static void main(String[] args) {
        launch(args);
    }
}