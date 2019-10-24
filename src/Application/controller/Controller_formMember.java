package Application.controller;

import Application.conectify.ConnectionClass;
import Application.libs.Error_template;
import Application.model.Model_member;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;
import javafx.scene.text.Text;
import javafx.stage.Stage;

import java.net.URL;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.util.Random;
import java.util.ResourceBundle;

public class Controller_formMember implements Initializable {
    private static Error_template error_template = new Error_template();
    private static ObservableList<Model_member> members = FXCollections.observableArrayList();

    @FXML
    public Text title;

    @FXML
    public TextField diPelanggan;

    @FXML
    public TextField nik;

    @FXML
    public TextField nama;

    @FXML
    public TextField notelp;

    @FXML
    public ComboBox<String> sex;

    @FXML
    public ComboBox<String> jenisJaminan;

    @FXML
    public TextField namaPemilikJaminan;

    @FXML
    public TextField nomoridentitasjaminan;

    @FXML
    public TextField populasiTernak;

    @FXML
    public TextArea alamat;

    @FXML
    public Button btnSimpan;

    @FXML
    public Button btnBatalkan;

    @FXML
    void doBatalkan(ActionEvent event) {
        openMemberArea();
    }
    public void setMember(Model_member obj){
        members.setAll(obj);
    }

    void initForm(){
        ObservableList jeniskelamin = FXCollections.observableArrayList("laki-laki", "perempuan");
        sex.setItems(jeniskelamin);
    }

    @FXML
    void doSimpan(ActionEvent event) {

        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();

        Boolean jk = false;
        if (sex.getSelectionModel().getSelectedItem() == "laki-laki"){
            jk = true;
        }
        String msgInfo, msgWarning;
        int rs = 0;

        try {
            if (btnSimpan.getText().equals("Simpan")){
                System.out.println("ini simpan");
                String sql = "INSERT INTO mitra " +
                        "(id_mitra , nama_mitra, sex_mitra, alamat_mitra, NIK, no_telepon_mitra, populasi_ternak, jenis_jaminan, nama_pemilik_jaminan, nomor_identitas_jaminan) " +
                        "VALUES (?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, diPelanggan.getText());
                statement.setString(2, nama.getText());
                statement.setBoolean(3, jk);
                statement.setString(4, alamat.getText());
                statement.setString(5, nik.getText());
                statement.setString(6, notelp.getText());
                statement.setString(7, populasiTernak.getText());
                statement.setString(8, jenisJaminan.getSelectionModel().getSelectedItem());
                statement.setString(9, namaPemilikJaminan.getText());
                statement.setString(10, nomoridentitasjaminan.getText());
                rs = statement.executeUpdate();

                msgInfo = "data berhasil disimpan";
                msgWarning = "data gagal disimpan";
            }else{
                String sql = "UPDATE mitra SET " +
                        "nama_mitra = ?, " +
                        "sex_mitra = ?, " +
                        "alamat_mitra = ?," +
                        "NIK = ?," +
                        "no_telepon_mitra = ?," +
                        "populasi_ternak = ? ," +
                        "jenis_jaminan = ? ," +
                        "nama_pemilik_jaminan = ? ," +
                        "nomor_identitas_jaminan = ? " +
                        "WHERE id_mitra = ?";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, nama.getText());
                statement.setBoolean(2, jk);
                statement.setString(3, alamat.getText());
                statement.setString(4, nik.getText());
                statement.setString(5, notelp.getText());
                statement.setString(6, populasiTernak.getText());
                statement.setString(7, jenisJaminan.getSelectionModel().getSelectedItem());
                statement.setString(8, namaPemilikJaminan.getText());
                statement.setString(9, nomoridentitasjaminan.getText());
                statement.setString(10, diPelanggan.getText());

                rs = statement.executeUpdate();

                msgInfo = "data berhasil diperbarui";
                msgWarning = "data gagal diperbarui";
            }

            if (rs > 0){
                error_template.success("Informasi", msgInfo);
                openMemberArea();

            }else{
                error_template.warning("Peringatan", msgWarning);
            }
        }catch (Exception e){
            error_template.error(e);
            e.printStackTrace();
        }

    }

    void openMemberArea(){
        Stage mystage = (Stage) btnSimpan.getScene().getWindow();
        mystage.close();
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        initForm();

        diPelanggan.setText(System.currentTimeMillis()+""+new Random().nextInt(99999999));
        diPelanggan.setDisable(true);
    }
}
