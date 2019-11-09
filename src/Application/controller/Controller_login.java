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
    Stage primaryStage;

    public Controller_login(Stage stg) {
        primaryStage = stg;
    }

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
                Controller_main controller_main = new Controller_main(primaryStage);
                fxmlLoader.setLocation(getClass().getResource("/Application/view/main.fxml"));
                fxmlLoader.setController(controller_main);
                Scene scene = new Scene(fxmlLoader.load(), 1280, 840);
                primaryStage.setScene(scene);
            }
        }catch (Exception e){
            error_template.error(e);
            e.printStackTrace();
        }
    }


    @Override
    public void initialize(URL location, ResourceBundle resources) {

    }
}
