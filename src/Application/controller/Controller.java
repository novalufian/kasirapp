package Application.controller;

import Application.libs.Global_share_variable;
import Application.model.Share_variable;
import javafx.application.Platform;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class Controller extends Stage {

    Controller_main parent;
    Label labelID;
    Label messageIn;
    TextField subTextField;
    Button subSendButton;
    Stage subStage;
    Global_share_variable global_share_variable;
    public Controller(){
        parent = global_share_variable.getController_main();

        System.out.println("oke");

        subStage = new Stage();
        Group subRoot = new Group();

//        try {
//            FXMLLoader fxmlLoader = new FXMLLoader();
//            fxmlLoader.setLocation(getClass().getResource("/Application/view/sample.fxml"));
//            Scene scene = new Scene(fxmlLoader.load(), 800, 600);
//            subStage.setScene(scene);
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        Scene scene = new Scene(subRoot, 300, 200);
//        subStage.show();

        VBox vBox = new VBox();

        labelID = new Label();
        labelID.setText(subStage.toString());

        messageIn = new Label();
        subTextField = new TextField();
        subTextField.setText("oke gan");

        subSendButton = new Button("Send to main Window");
        subSendButton.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                parent.setCodeText(subTextField.getText());
            }

        });

        vBox.getChildren().addAll(labelID, messageIn, subTextField, subSendButton);
        subRoot.getChildren().add(vBox);
    }

    public void setMsg(String msg) {
        messageIn.setText(msg);
        parent.setCodeText(subTextField.getText());

    }
}
