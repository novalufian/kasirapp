package Application.controller;

import Application.Main;
import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.libs.Global_share_variable;
import Application.model.Model_member;
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
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;
import javafx.util.Callback;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Optional;
import java.util.ResourceBundle;

public class Controller_member implements Initializable {

    private static ConnectionClass connectionClass = new ConnectionClass();
    private static Connection connection = connectionClass.getConnection();
    private static Error_template error_template = new Error_template();



    @FXML
    private TableView<Model_member> tableMember;

    @FXML
    private TableColumn<Model_member, Integer> no;

    @FXML
    private TableColumn<Model_member, String> idMember;

    @FXML
    private TableColumn<Model_member, String> nama;

    @FXML
    private TableColumn<Model_member, String> nikMember;

    @FXML
    private TableColumn<Model_member, String> noTelepon;

    @FXML
    private TableColumn<Model_member, Button> view;

    @FXML
    private TableColumn<Model_member, Button> update;

    @FXML
    private TableColumn<Model_member, Button> delete;

    @FXML
    private TextField textCariMember;

    @FXML
    private Button btnTambahMember;

    @FXML
    void onTambahMEmber(ActionEvent event) {
        doOpenFormTambah(null);
    }

    void doOpenFormTambah(Model_member obj){
        Main main = new Main();
        System.out.println(main.getClass());
        try {
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("/Application/view/form_member.fxml"));
            Scene scene = new Scene(fxmlLoader.load(), 600, 600);
            Stage stage = new Stage();
            stage.setTitle("Tambah member");
            stage.setScene(scene);
            if (!stage.isShowing()){
                stage.show();
            }else{
                error_template.success("Pemberitahuan", "form cari brang sudah tampil");
            }

            stage.setOnHidden(event1 -> {
                try {
                    FXMLLoader myfxmlLoader = new FXMLLoader();
                    myfxmlLoader.setLocation(getClass().getResource("/Application/view/member.fxml"));
                    Scene myscene = new Scene(myfxmlLoader.load(), 1000, 600);
                    Stage mystage = new Stage();
                    mystage.setTitle("Member area");
                    mystage.setScene(myscene);
                    if (!mystage.isShowing()){
                        mystage.show();
                    }else{
                        error_template.success("Pemberitahuan", "form cari brang sudah tampil");
                    }

                    mystage.addEventFilter(KeyEvent.KEY_PRESSED, event ->{
                        switch (event.getCode()){
                            case ESCAPE:
                                mystage.close();
                                break;
                        }
                    });

                }catch (Exception e){
                    error_template.error(e);
                }
            });

            if(obj != null){
                Controller_formMember controller_formMember = fxmlLoader.getController();
                controller_formMember.setMember(obj);

                Integer index = 1;
                if(obj.getSex() != "1"){
                    index = 2;
                }

                controller_formMember.title.setText("Update data member");
                controller_formMember.diPelanggan.setText(obj.getId());
                controller_formMember.diPelanggan.setDisable(true);
                controller_formMember.nik.setText(obj.getNik());
                controller_formMember.nama.setText(obj.getNama());
                controller_formMember.notelp.setText(obj.getNoTelp());
                controller_formMember.sex.getSelectionModel().select(index);
                controller_formMember.tempatLahir.setText(obj.getTempatLahir());
                controller_formMember.alamat.setText(obj.getAlamat());

                controller_formMember.btnSimpan.setText("Update data");
            }

            stage.addEventFilter(KeyEvent.KEY_PRESSED, e ->{
                switch (e.getCode()){
                    case ESCAPE:
                        stage.close();
                        break;
                }
            });

            stage.setOnCloseRequest(event -> {
                System.out.println("pkee");
            });


            Stage mystage = (Stage) btnTambahMember.getScene().getWindow();
            mystage.close();

        }catch (Exception e){
            error_template.error(e);
            e.printStackTrace();
        }
    }

    void generateTable(){
        no.setCellValueFactory(new PropertyValueFactory<>("no"));
        idMember.setCellValueFactory(new PropertyValueFactory<>("id"));
        nama.setCellValueFactory(new PropertyValueFactory<>("nama"));
        nikMember.setCellValueFactory(new PropertyValueFactory<>("nik"));
        noTelepon.setCellValueFactory(new PropertyValueFactory<>("noTelp"));
        view.setCellValueFactory(new PropertyValueFactory<>("view"));
        update.setCellValueFactory(new PropertyValueFactory<>("update"));
        delete.setCellValueFactory(new PropertyValueFactory<>("delete"));
        createaBtnTableView("view");
        createaBtnTableView("update");
        createaBtnTableView("delete");
    }

    void generateTableData(){
        ObservableList<Model_member> memberListData = FXCollections.observableArrayList();
        tableMember.getItems().removeAll();

        try {
            String sql = "SELECT * FROM pelanggan WHERE published = 1";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();

            int index = 1;
            while (rs.next()){
                memberListData.add(new Model_member(
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

            tableMember.setItems(memberListData);
            FilteredList<Model_member> filteredList = new FilteredList<>(memberListData, b -> true);
            textCariMember.textProperty().addListener((observable, oldValue, newValue) -> {
                filteredList.setPredicate(member -> {
                    if (newValue == null || newValue.isEmpty()){
                        return true;
                    }

                    String lowerCaseFilter = newValue.toLowerCase();

                    if (member.getId().indexOf(lowerCaseFilter) != -1){
                        return true;
                    }else if(member.getNama().toLowerCase().indexOf(lowerCaseFilter) != -1 ){
                        return true;
                    }else if(member.getNik().toLowerCase().indexOf(lowerCaseFilter) != -1){
                        return true;
                    }else{
                        return false;
                    }
                });
            });

            SortedList<Model_member> sortedList = new SortedList<>(filteredList);
            sortedList.comparatorProperty().bind(tableMember.comparatorProperty());
            tableMember.setItems(sortedList);


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
                                        System.out.println(member.getId());
                                        switch (typebtn){
                                            case "view":
                                                doViewMember(member);
                                                break;
                                            case "update":
                                                doUpdateMember(member);
                                                break;
                                            case "delete":
                                                doDeletemember(member.getId());
                                                break;
                                        }

                                    });

                                    setGraphic(btn);
                                    setText(null);
                                }
                            }
                        };
                        return cell;
                    }
                };

        switch (typebtn){
            case "view":
                view.setCellFactory(cellFactory);
                break;
            case "update":
                update.setCellFactory(cellFactory);
                break;
            case "delete":
                delete.setCellFactory(cellFactory);
                break;
        }

    }

    void doViewMember(Model_member member){

    }

    void doUpdateMember(Model_member member){
        doOpenFormTambah(member);


    }

    public void refreshTable(){
        generateTable();
        generateTableData();
    }

    void doDeletemember(String id){
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Konfirmasi");
        alert.setHeaderText("Hapus data member");
        alert.setContentText("Apakah anda yakin menghapus data ini ?");

        Optional<ButtonType> result = alert.showAndWait();
        if (result.get() == ButtonType.OK){
            try{
                String sql = "UPDATE pelanggan SET published = 0 WHERE id_pelanggan = ?";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, id);
                int rs = statement.executeUpdate();

                if (rs > 0){
                    generateTable();
                    generateTableData();

                    alert.close();
                }else{
                    alert.close();
                }

            }catch (Exception e){
                error_template.error(e);
            }

        } else {
            alert.close();
        }
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        generateTable();
        generateTableData();

        System.out.println(Global_share_variable.getMainClass());

    }
}
