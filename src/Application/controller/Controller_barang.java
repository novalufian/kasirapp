package Application.controller;

import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.libs.Global_share_variable;
import Application.model.Model_barang;
import Application.model.Model_cart_barang;
import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;
import javafx.util.Callback;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ResourceBundle;

public class Controller_barang implements Initializable {
    private static Error_template error_template = new Error_template();

    Controller_main window_parent;

    @FXML
    private TableView<Model_barang> tableBrang;

    @FXML
    private TableColumn<Model_barang, Integer> no;

    @FXML
    private TableColumn<Model_barang, String> kode;

    @FXML
    private TableColumn<Model_barang, String> nama;

    @FXML
    private TableColumn<Model_barang, String> kategori;

    @FXML
    private TableColumn<Model_barang, Button> action;

    @FXML
    private TextField textCari;

    @FXML
    private Button btnCari;

    @FXML
    private Button btnSelesai;

    @FXML
    void doCariBarang(ActionEvent event) {

    }

    @FXML
    void doCariOnType(KeyEvent event) {

    }

    @FXML
    void doSelesai(ActionEvent event) {
        Stage mystage = (Stage) btnCari.getScene().getWindow();
        mystage.close();
    }

    void doFilterData(){

    }

    void generateTable(){
        no.setCellValueFactory(new PropertyValueFactory<>("no"));
        kode.setCellValueFactory(new PropertyValueFactory<>("kode"));
        nama.setCellValueFactory(new PropertyValueFactory<>("nama"));
        kategori.setCellValueFactory(new PropertyValueFactory<>("kategori"));
        action.setCellValueFactory(new PropertyValueFactory<>("delete"));
        createaBtnTableView("add");
    }

    void generateTableData(){
        ObservableList<Model_barang> dataItemBarang = FXCollections.observableArrayList();
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();

        try {
            String sql = "SELECT * FROM barang " +
                    "INNER JOIN kategori_barang ON barang.kategori_barang_id = kategori_barang.kategori_barang_id " +
                    "WHERE barang.published = 1";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();

            Integer index = 1;
            while (rs.next()){
                dataItemBarang.add(new Model_barang(
                        index++,
                        rs.getString("id_barang"),
                        rs.getString("kode_barang"),
                        rs.getString("nama_barang"),
                        rs.getString("nama_kategori"),
                        rs.getString("harga_jual"),
                        new Button("add")
                ));
            }

            tableBrang.setItems(dataItemBarang);

            FilteredList<Model_barang> filteredList = new FilteredList<>(dataItemBarang, b -> true);
            textCari.textProperty().addListener((observable, oldValue, newValue) -> {
                filteredList.setPredicate(model_barang -> {
                    if (newValue == null || newValue.isEmpty()){
                        return true;
                    }

                    String lowerCaseFilter = newValue.toLowerCase();

                    if (model_barang.getKode().indexOf(lowerCaseFilter) != -1){
                        return true;
                    }else if(model_barang.getNama().toLowerCase().indexOf(lowerCaseFilter) != -1 ){
                        return true;
                    }else if(model_barang.getKategori().toLowerCase().indexOf(lowerCaseFilter) != -1){
                        return true;
                    }else{
                        return false;
                    }
                });
            });

            SortedList<Model_barang> sortedList = new SortedList<>(filteredList);
            sortedList.comparatorProperty().bind(tableBrang.comparatorProperty());
            tableBrang.setItems(sortedList);

        }catch (Exception e){
            error_template.error(e);
        }
    }

    private void createaBtnTableView(String typebtn){
        Callback<TableColumn<Model_barang, Button>, TableCell<Model_barang, Button>> cellFactory =
                new Callback<TableColumn<Model_barang, Button>, TableCell<Model_barang, Button>>() {

                    @Override
                    public TableCell<Model_barang, Button> call(TableColumn<Model_barang, Button> param) {

                        final TableCell<Model_barang, Button> cell = new TableCell<Model_barang, Button>(){

                            final  Button btn = new Button(typebtn);

                            @Override
                            public void updateItem(Button item, boolean empty){
                                super.updateItem(item, empty);

                                if (empty){
                                    setGraphic(null);
                                    setText(null);
                                }else{
                                    btn.setOnAction(event -> {
                                        Model_barang barang = getTableView().getItems().get(getIndex());
                                        System.out.println(barang.getKode());
                                        window_parent.setCodeText(barang.getKode());
                                        window_parent.jumlahItem.requestFocus();
                                        Stage stage = (Stage) btn.getScene().getWindow();
                                        stage.close();

                                    });

                                    setGraphic(btn);
                                    setText(null);
                                }
                            }
                        };
                        return cell;
                    }
                };

        action.setCellFactory(cellFactory);
    }

    public Controller_barang(Controller_main main){
//        initialize();
        window_parent = main;
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        generateTable();
        generateTableData();
        doFilterData();

        Platform.runLater(()->{
            textCari.requestFocus();
        });
    }
}
