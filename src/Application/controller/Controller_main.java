package Application.controller;

import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.libs.Global_share_variable;
import Application.model.Model_cart_barang;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.text.Text;
import javafx.stage.Stage;
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
    private Button btnMember;

    @FXML
    private Button btnSimpan;

    @FXML
    private Button btnBaru;

    @FXML
    public TextField kodeBarang;

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

    public void setKodePelanggan(String kodePelanggan) {
        this.kodePelanggan .setText(kodePelanggan);
    }

    @FXML
    private Text labelTotalBelanja;
    public void ShowAlert(String msg){
        error_template.warning("oke", msg);
    }

    @FXML
    void doCariMember(ActionEvent event) {
        try {
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("/Application/view/carimember.fxml"));
            Scene scene = new Scene(fxmlLoader.load(), 700, 600);
            Stage stage = new Stage();
            stage.setTitle("New Window");
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
        }
    }

    @FXML
    void doSimpanTransaksi(ActionEvent event) {

    }

    @FXML
    void donTransaksiBaru(ActionEvent event) {

    }

    @FXML
    void doOpenFormMember(ActionEvent event){
        try {
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("/Application/view/member.fxml"));
            Scene scene = new Scene(fxmlLoader.load(), 1000, 600);
            Stage stage = new Stage();
            stage.setTitle("New Window");
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
        }
    }

    @FXML
    void onCariBarang(ActionEvent event) {
        try {
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("/Application/view/barang.fxml"));
            Scene scene = new Scene(fxmlLoader.load(), 800, 600);
            Stage stage = new Stage();
            stage.setTitle("New Window");
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
        }
    }

    @FXML
    void doOpenFormPemayaran(ActionEvent event) {

        if (Global_share_variable.getCart().size() > 0){
            try {
                FXMLLoader fxmlLoader = new FXMLLoader();
                fxmlLoader.setLocation(getClass().getResource("/Application/view/pembayaran.fxml"));
                Scene scene = new Scene(fxmlLoader.load(), 600, 600);
                Stage stage = new Stage();
                stage.setTitle("New Window");
                stage.setScene(scene);
                Global_share_variable.setPembayaranStage(stage);
                stage.show();

                Controller_pembayaran controller_pembayaran = fxmlLoader.getController();
                controller_pembayaran.setStage(stage);

                stage.addEventFilter(KeyEvent.KEY_PRESSED, e -> {
                    switch (e.getCode()){
                        case F10:
                            controller_pembayaran.doCetakStruk();
                            break;
                        case F9:
                            controller_pembayaran.validatePembayaran();
                            break;

                        case ESCAPE:
                            stage.close();
                            break;
                    }
                });

            }catch (Exception e){
                error_template.error(e);
            }

        }else{
            error_template.warning("Peringatan", "Form bayar tidak dapat dibuka akrena tidak ada item di keranjang");
        }
    }


    @FXML
    void nextToJumlah(KeyEvent event) {
        Boolean x = event.getCode().equals(KeyCode.ENTER);
        System.out.println(x);
        if(x){
            jumlahItem.requestFocus();
        }
    }

    public void setCodeText(String kode){
        kodeBarang.setText(kode);
    }
    public void setMemberid(String id){
        kodePelanggan.setText(id);
    }

    void cariBrarang(String id){
        try {
            String sql = "SELECT * FROM barang " +
                    "WHERE kode_barang = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                int a = Integer.valueOf(rs.getInt("harga_jual"));
                int b = Integer.valueOf(jumlahItem.getText());
                int i = a * b;

                Global_share_variable.setCart(
                        new Model_cart_barang(
                                Global_share_variable.getCart().size() + 1,
                                rs.getString("id_barang"),
                                rs.getString("kode_barang"),
                                rs.getString("nama_barang"),
                                rs.getString("kategori_barang_id"),
                                rs.getInt("harga_jual"),
                                Integer.parseInt(jumlahItem.getText()),
                                Integer.parseInt(jumlahItem.getText()),
                                satuanItem.getValue(),
                                i,
                                new Button("delete")
                        )
                );

            }

        }catch (Exception e){
            error_template.error(e);
            e.printStackTrace();
        }

        System.out.println(Global_share_variable.getCart());
    }

    @FXML
    void nextToSatuan(KeyEvent event) {
        Boolean x = event.getCode().equals(KeyCode.ENTER);
        if(x){
            jumlahItem.requestFocus();
            String id = kodeBarang.getText();

            AtomicReference<Boolean> isItemonCart = new AtomicReference<>(false);

            Global_share_variable.getCart().forEach(item ->{
                if(kodeBarang.getText().equals(item.getKode())){
                    item.setJumlah(item.getJumlah() + Integer.parseInt(jumlahItem.getText()));
                    item.setTotalharga(item.getJumlah() * item.getHarga());
                    isItemonCart.set(true);
                    System.out.println(item.getJumlah());

                    Global_share_variable.updateValueCart(Global_share_variable.getCart().indexOf(item), item);
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
        System.out.println("oke");
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

    public void generateTableData(){
        tableCartBarang.setItems(Global_share_variable.getCart());

        AtomicReference<Integer> totalBelanja = new AtomicReference<>(0);
        Global_share_variable.getCart().forEach(item -> {
            totalBelanja.updateAndGet(v -> v + item.getTotalharga());
        });

        if (totalBelanja.toString().matches("\\d*")) {
            DecimalFormat formatter = new DecimalFormat("#,###");
            String newValueStr = formatter.format(Double.parseDouble(totalBelanja.toString()));

            labelTotalBelanja.setText("Rp.  " + newValueStr + ",-");
        }

    }

    public void resetValue(){
        String idPenjualan = System.currentTimeMillis()+""+new Random().nextInt(9999);

        satuanItem.getSelectionModel().select(0);
        jenisPelanggan.getSelectionModel().select(0);
        noTransaksi.setText(idPenjualan);
        Global_share_variable.setIdPenjualan(idPenjualan);

        tangglBeli.setValue(LocalDate.now());

        kodePelanggan.setText("");
        kodeBarang.setText("");
        kodeBarang.requestFocus();
        jumlahItem.setText("");
        labelTotalBelanja.setText("Rp. 0,-");

        Global_share_variable.clearCart();

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
                                        Global_share_variable.removeitem(barang);
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