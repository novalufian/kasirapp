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
        fxmlLoader.setLocation(getClass().getResource("view/login.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 600, 400);
        primaryStage.setScene(scene);
        primaryStage.setTitle("Kasir app");
        primaryStage.show();


    }


    public static void main(String[] args) {
        launch(args);
    }
}