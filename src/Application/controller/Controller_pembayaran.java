package Application.controller;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.scene.text.Text;

import java.net.URL;
import java.util.ResourceBundle;

public class Controller_pembayaran implements Initializable {

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
    void cetakStrukPenjualan(ActionEvent event) {

    }

    @FXML
    void simpanPenjualan(ActionEvent event) {

    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        bayartunai.requestFocus();

        ObservableList pembayaran = FXCollections.observableArrayList("tunai", "angsuran");
        caraPembayaran.setItems(pembayaran);
        caraPembayaran.getSelectionModel().select(0);
    }
}
