package Application.controller;

import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.model.Model_member;
import Application.model.Model_pembayaran;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;
import javafx.util.Callback;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ResourceBundle;


public class Controller_piutang implements Initializable {

    ConnectionClass connectionClass = new ConnectionClass();
    Connection connection = connectionClass.getConnection();

    Error_template error_template = new Error_template();

    @FXML
    private Button btnCari;

    @FXML
    private Button carimember;

    @FXML
    private Button btnSelesai;

    @FXML
    private TextField textCari;

    @FXML
    private TableView<Model_pembayaran> tableBrang;

    @FXML
    private TableColumn<Model_pembayaran,String> faktur;

    @FXML
    private TableColumn<Model_pembayaran, Integer> terbayar;

    @FXML
    private TableColumn<Model_pembayaran,Integer> totalBelanja;

    @FXML
    private TableColumn<Model_pembayaran,String> jatuhtempo;

    @FXML
    private TableColumn<Model_pembayaran,Integer> hutang;

    @FXML
    private TableColumn<Model_pembayaran,Button> action;

    @FXML
    private TextField tampilkanDataMember;


    @FXML
    void doCariBarang(ActionEvent event) {

    }

    @FXML
    void doTampilkanDataMember(ActionEvent event) {
        String id = tampilkanDataMember.getText();
        generateTable();
        genarateData("MBR-"+id);
    }

    @FXML
    void doTampilkanDataMemberText(KeyEvent event){
        Boolean x = event.getCode().equals(KeyCode.ENTER);
        if(x){
            String id = tampilkanDataMember.getText();
            generateTable();
            genarateData("MBR-"+id);
        }
    }

    @FXML
    void doCariMember(ActionEvent event) {

    }

    @FXML
    void doSelesai(ActionEvent event) {

    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
    }

    void generateTable(){
        faktur.setCellValueFactory(new PropertyValueFactory<>("faktur"));
        terbayar.setCellValueFactory(new PropertyValueFactory<>("jumlah_terbayar"));
        totalBelanja.setCellValueFactory(new PropertyValueFactory<>("total_pembelian"));
        hutang.setCellValueFactory(new PropertyValueFactory<>("piutang_sisa"));
        jatuhtempo.setCellValueFactory(new PropertyValueFactory<>("jatuh_tempo"));
        action.setCellValueFactory(new PropertyValueFactory<>("proses"));
        createaBtnTableView("proses");
    }

    void genarateData(String member_id){
        ObservableList<Model_pembayaran> data = FXCollections.observableArrayList();

        try {
            String sql = "SELECT * FROM penjualan WHERE id_member = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, member_id);

            ResultSet rs = statement.executeQuery();

            int index = 1;
            while (rs.next()){
                data.add(new Model_pembayaran(
                        index++,
                        rs.getInt("total_pembelian"),
                        rs.getInt("jumlah_terbayar"),
                        rs.getInt("piutang_sisa"),
                        rs.getString("id_penjualan"),
                        rs.getString("id_member"),
                        rs.getString("no_faktur_penjualan"),
                        rs.getDate("piutang_jatuh_tempo"),
                        rs.getBoolean("cara_pembayaran"),
                        new Button("proses")
                ));
            }

            tableBrang.setItems(data);


            FilteredList<Model_pembayaran> filteredList = new FilteredList<>(data, b -> true);
            textCari.textProperty().addListener((observable, oldValue, newValue) -> {
                filteredList.setPredicate(pembayaran -> {
                    if (newValue == null || newValue.isEmpty()){
                        return true;
                    }

                    String lowerCaseFilter = newValue.toLowerCase();

                    if (pembayaran.getId().indexOf(lowerCaseFilter) != -1){
                        return true;
                    }else if(pembayaran.getFaktur().toLowerCase().indexOf(lowerCaseFilter) != -1 ){
                        return true;
                    }else{
                        return false;
                    }
                });
            });

            SortedList<Model_pembayaran> sortedList = new SortedList<>(filteredList);
            sortedList.comparatorProperty().bind(tableBrang.comparatorProperty());
            tableBrang.setItems(sortedList);

        }catch (Exception e){
            error_template.error(e);
        }
    }

    private void createaBtnTableView(String typebtn){
        Callback<TableColumn<Model_pembayaran, Button>, TableCell<Model_pembayaran, Button>> cellFactory =
                new Callback<TableColumn<Model_pembayaran, Button>, TableCell<Model_pembayaran, Button>>() {

                    @Override
                    public TableCell<Model_pembayaran, Button> call(TableColumn<Model_pembayaran, Button> param) {

                        final TableCell<Model_pembayaran, Button> cell = new TableCell<Model_pembayaran, Button>(){

                            final  Button btn = new Button(typebtn);

                            @Override
                            public void updateItem(Button item, boolean empty){
                                super.updateItem(item, empty);

                                if (empty){
                                    setGraphic(null);
                                    setText(null);
                                }else{
                                    btn.setOnAction(event -> {
                                        Model_pembayaran pembayran = getTableView().getItems().get(getIndex());
                                        System.out.println(pembayran);
                                        openFormPelunasan(pembayran);
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

    void openFormPelunasan(Model_pembayaran pembayaran){
        try {
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("/Application/view/pelunasan.fxml"));
            Controller_pelunasan pelunasan = new Controller_pelunasan(pembayaran);
            fxmlLoader.setController(pelunasan);
            Scene scene = new Scene(fxmlLoader.load(), 600, 600);
            Stage stage = new Stage();
            stage.setTitle("Pelunasan");
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
            e.printStackTrace();
        }
    }
}
