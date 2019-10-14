package Application.controller;

import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.libs.Global_share_variable;
import Application.model.Model_cart_barang;
import Application.model.Model_member;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.util.Callback;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ResourceBundle;

public class Controller_carimember implements Initializable {
    private static Error_template error_template = new Error_template();

    @FXML
    private TextField cariMember;

    @FXML
    private TableView<Model_member> tableCariMember;

    @FXML
    private TableColumn<Model_member, Integer> no;

    @FXML
    private TableColumn<Model_member, String> idmember;

    @FXML
    private TableColumn<Model_member, String> nama;

    @FXML
    private TableColumn<Model_member, String> notelp;

    @FXML
    private TableColumn<Model_member, Button> action;

    void generateTable(){
        no.setCellValueFactory(new PropertyValueFactory<>("no"));
        idmember.setCellValueFactory(new PropertyValueFactory<>("id"));
        nama.setCellValueFactory(new PropertyValueFactory<>("nama"));
        notelp.setCellValueFactory(new PropertyValueFactory<>("noTelp"));
        action.setCellValueFactory(new PropertyValueFactory<>("view"));
        createaBtnTableView("add");

    }

    void generateTableData(){
        ObservableList<Model_member> member = FXCollections.observableArrayList();
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();

        try {
            String sql = "SELECT * FROM pelanggan WHERE published = 1";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();

            int index = 1;
            while (rs.next()){
                member.add(new Model_member(
                        index++,
                        rs.getString("id_pelanggan"),
                        rs.getString("pelanggan_nama"),
                        rs.getString("pelanggan_nik"),
                        rs.getString("pelanggan_notelp"),
                        rs.getString("pelanggan_sex"),
                        rs.getString("pelanggan_alamat"),
                        rs.getString("pelanggan_tempat_lahir"),
                        rs.getDate("pelanggan_tgl_lahir"),
                        new Button("view"),
                        new Button("update"),
                        new Button("delete")
                ));
            }

            tableCariMember.setItems(member);
            FilteredList<Model_member> filteredList = new FilteredList<>(member, b -> true);
            cariMember.textProperty().addListener((observable, oldValue, newValue) -> {
                filteredList.setPredicate(member_data -> {
                    if (newValue == null || newValue.isEmpty()){
                        return true;
                    }

                    String lowerCaseFilter = newValue.toLowerCase();

                    if (member_data.getId().indexOf(lowerCaseFilter) != -1){
                        return true;
                    }else if(member_data.getNama().toLowerCase().indexOf(lowerCaseFilter) != -1 ){
                        return true;
                    }else if(member_data.getNik().toLowerCase().indexOf(lowerCaseFilter) != -1){
                        return true;
                    }else{
                        return false;
                    }
                });
            });

            SortedList<Model_member> sortedList = new SortedList<>(filteredList);
            sortedList.comparatorProperty().bind(tableCariMember.comparatorProperty());
            tableCariMember.setItems(sortedList);

        }catch (Exception e){
            error_template.error(e);
        }
    }

    private void createaBtnTableView(String typebtn){
        Callback<TableColumn<Model_member, Button>, TableCell<Model_member, Button>> cellFactory =
                new Callback<TableColumn<Model_member, Button>, TableCell<Model_member, Button>>() {

                    @Override
                    public TableCell<Model_member, Button> call(TableColumn<Model_member, Button> param) {

                        final TableCell<Model_member, Button> cell = new TableCell<Model_member, Button>(){

                            final  Button btn = new Button(typebtn);

                            @Override
                            public void updateItem(Button item, boolean empty){
                                super.updateItem(item, empty);

                                if (empty){
                                    setGraphic(null);
                                    setText(null);
                                }else{
                                    btn.setOnAction(event -> {
                                        Model_member member = getTableView().getItems().get(getIndex());

                                        new Controller_main().ShowAlert("dari sini om");
                                        new Controller_main().setKodePelanggan("dari sini om");
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

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        generateTable();
        generateTableData();
    }
}
