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
        Scene scene = new Scene(fxmlLoader.load(), 600, 400);
        primaryStage.setScene(scene);
        primaryStage.setTitle("Kasir app");
        primaryStage.show();
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
                            createTransaksiBaru();
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
                stage.show();

                Global_share_variable.setPembayaranStage(stage);
            }catch (Exception e){
                error_template.error(e);
            }

        }else{
            error_template.warning("Peringatan", "Form bayar tidak dapat dibuka akrena tidak ada item di keranjang");
        }
    }

    private void simpanTransaksi(){}

    private void createTransaksiBaru(){}

    private void openMemberArea(){}


    public static void main(String[] args) {
        launch(args);
    }
}