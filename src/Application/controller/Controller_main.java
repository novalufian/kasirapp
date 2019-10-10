package Application.controller;

import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.model.Model_cart_barang;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.text.Text;
import javafx.util.Callback;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.Random;
import java.util.ResourceBundle;
import java.util.concurrent.atomic.AtomicReference;

public class Controller_main implements Initializable {

    private static ObservableList<Model_cart_barang> cart = FXCollections.observableArrayList();
    private static ConnectionClass connectionClass = new ConnectionClass();
    private static Connection connection = connectionClass.getConnection();

    private static Error_template error_template = new Error_template();

    @FXML
    private TextField noTransaksi;

    @FXML
    private DatePicker tangglBeli;

    @FXML
    private ComboBox<String> jenisPelanggan;

    @FXML
    private TextField kodePelanggan;

    @FXML
    private Button btnCariMember;

    @FXML
    private Button cariItem;

    @FXML
    private Button btnTambahToCart;

    @FXML
    private TextField kodeBarang;

    @FXML
    private TextField jumlahItem;

    @FXML
    private ComboBox<String> satuanItem;

    @FXML
    private TableView<Model_cart_barang> tableCartBarang;

    @FXML
    private TableColumn<Model_cart_barang,Integer> no;

    @FXML
    private TableColumn<Model_cart_barang, String> kode;

    @FXML
    private TableColumn<Model_cart_barang, String> nama;

    @FXML
    private TableColumn<Model_cart_barang, Integer> harga;

    @FXML
    private TableColumn<Model_cart_barang, Integer> jumlah;

    @FXML
    private TableColumn<Model_cart_barang, String> satuan;

    @FXML
    private TableColumn<Model_cart_barang, Integer> potongan;

    @FXML
    private TableColumn<Model_cart_barang, Integer> totalHarga;

    @FXML
    private TableColumn<Model_cart_barang, Button> action;

    @FXML
    private Text labelTotalBelanja;

    @FXML
    void doCariMember(ActionEvent event) {

    }

    @FXML
    void nextToJumlah(KeyEvent event) {
        Boolean x = event.getCode().equals(KeyCode.ENTER);
        System.out.println(x);
        if(x){
            jumlahItem.requestFocus();
        }
    }

    void cariBrarang(String id){
        try {
            String sql = "SELECT * FROM barang WHERE kode_barang = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                int a = Integer.valueOf(rs.getInt("harga_jual"));
                int b = Integer.valueOf(jumlahItem.getText());
                int i = a * b;

                cart.add(new Model_cart_barang(
                        cart.size() + 1,
                        rs.getString("id_barang"),
                        rs.getString("kode_barang"),
                        rs.getString("nama_barang"),
                        rs.getInt("harga_jual"),
                        Integer.parseInt(jumlahItem.getText()),
                        Integer.parseInt(jumlahItem.getText()),
                        satuanItem.getValue(),
                        i,
                        new Button("delete")
                ));

            }

        }catch (Exception e){
            error_template.error(e);
            e.printStackTrace();
        }
    }

    @FXML
    void nextToSatuan(KeyEvent event) {
        Boolean x = event.getCode().equals(KeyCode.ENTER);
        if(x){
            jumlahItem.requestFocus();
            String id = kodeBarang.getText();

            AtomicReference<Boolean> isItemonCart = new AtomicReference<>(false);

            cart.forEach(item ->{
                if(kodeBarang.getText().equals(item.getKode())){
                    item.setJumlah(item.getJumlah() + Integer.parseInt(jumlahItem.getText()));
                    item.setTotalharga(item.getJumlah() * item.getHarga());
                    isItemonCart.set(true);
                    System.out.println(item.getJumlah());

                    cart.set(cart.indexOf(item), item);
                }
            });



            if (!isItemonCart.get()){
                cariBrarang(id);
            }

            System.out.println(isItemonCart.get());
            generateTableData();

            jumlahItem.setText("");
            kodeBarang.setText("");
            kodeBarang.requestFocus();

        }
    }

    @FXML
    void tambahToChart(ActionEvent event) {

    }

    private void generateTable(){
        no.setCellValueFactory(new PropertyValueFactory<>("no"));
        kode.setCellValueFactory(new PropertyValueFactory<>("kode"));
        nama.setCellValueFactory(new PropertyValueFactory<>("nama"));
        harga.setCellValueFactory(new PropertyValueFactory<>("harga"));
        jumlah.setCellValueFactory(new PropertyValueFactory<>("jumlah"));
        satuan.setCellValueFactory(new PropertyValueFactory<>("satuan"));
        potongan.setCellValueFactory(new PropertyValueFactory<>("potongan"));
        totalHarga.setCellValueFactory(new PropertyValueFactory<>("totalharga"));
        action.setCellValueFactory(new PropertyValueFactory<>("delete"));
        createaBtnTableView("delete");
    }

    private void generateTableData(){
        tableCartBarang.setItems(cart);

        AtomicReference<Integer> totalBelanja = new AtomicReference<>(0);
        cart.forEach(item -> {
            totalBelanja.updateAndGet(v -> v + item.getTotalharga());
        });

        if (totalBelanja.toString().matches("\\d*")) {
            DecimalFormat formatter = new DecimalFormat("#,###");
            String newValueStr = formatter.format(Double.parseDouble(totalBelanja.toString()));

            labelTotalBelanja.setText("Rp.  " + newValueStr + ",-");
        }

    }

    private void resetValue(){
        satuanItem.getSelectionModel().select(0);
        jenisPelanggan.getSelectionModel().select(0);
        noTransaksi.setText("PJL-"+ System.currentTimeMillis() +new Random().nextInt(99999999));

        tangglBeli.setValue(LocalDate.now());

        kodePelanggan.setText("");
        kodeBarang.setText("");
        kodeBarang.requestFocus();
        jumlahItem.setText("");

        cart.removeAll();

    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {

        ObservableList dataSatuan = FXCollections.observableArrayList("pcs", "kardus");
        satuanItem.setItems(dataSatuan);

        ObservableList dataJenisPelanggan = FXCollections.observableArrayList("umum", "member");
        jenisPelanggan.setItems(dataJenisPelanggan);
        noTransaksi.setDisable(true);

        resetValue();
        generateTable();

    }

    private void createaBtnTableView(String typebtn){
        Callback<TableColumn<Model_cart_barang, Button>, TableCell<Model_cart_barang, Button>> cellFactory =
                new Callback<TableColumn<Model_cart_barang, Button>, TableCell<Model_cart_barang, Button>>() {

                    @Override
                    public TableCell<Model_cart_barang, Button> call(TableColumn<Model_cart_barang, Button> param) {

                        final TableCell<Model_cart_barang, Button> cell = new TableCell<Model_cart_barang, Button>(){

                            final  Button btn = new Button(typebtn);

                            @Override
                            public void updateItem(Button item, boolean empty){
                                super.updateItem(item, empty);

                                if (empty){
                                    setGraphic(null);
                                    setText(null);
                                }else{
                                    btn.setOnAction(event -> {
                                        Model_cart_barang barang = getTableView().getItems().get(getIndex());
                                        System.out.println(barang);
                                        System.out.println(getIndex());
                                        cart.remove(getIndex());

                                        generateTableData();
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
}
