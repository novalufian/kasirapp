package Application.model;

import javafx.scene.control.Button;

import java.util.Date;

public class Model_member {
    Integer no;
    String id, nama, nik, noTelp, sex, alamat, populasiTernak, jenisJaminan, nama_pemilik_jaminan, nomor_identitas_jaminan;
    Button view, update, delete;

    public Model_member(Integer no, String id, String nama, String nik, String noTelp, String sex, String alamat, String populasiTernak, String jenisJaminan, String nama_pemilik_jaminan, String nomor_identitas_jaminan, Button view, Button update, Button delete) {
        this.no = no;
        this.id = id;
        this.nama = nama;
        this.nik = nik;
        this.noTelp = noTelp;
        this.sex = sex;
        this.alamat = alamat;
        this.populasiTernak = populasiTernak;
        this.jenisJaminan = jenisJaminan;
        this.nama_pemilik_jaminan = nama_pemilik_jaminan;
        this.nomor_identitas_jaminan = nomor_identitas_jaminan;
        this.view = view;
        this.update = update;
        this.delete = delete;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getNik() {
        return nik;
    }

    public void setNik(String nik) {
        this.nik = nik;
    }

    public String getNoTelp() {
        return noTelp;
    }

    public void setNoTelp(String noTelp) {
        this.noTelp = noTelp;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public String getPopulasiTernak() {
        return populasiTernak;
    }

    public void setPopulasiTernak(String populasiTernak) {
        this.populasiTernak = populasiTernak;
    }

    public String getJenisJaminan() {
        return jenisJaminan;
    }

    public void setJenisJaminan(String jenisJaminan) {
        this.jenisJaminan = jenisJaminan;
    }

    public String getNama_pemilik_jaminan() {
        return nama_pemilik_jaminan;
    }

    public void setNama_pemilik_jaminan(String nama_pemilik_jaminan) {
        this.nama_pemilik_jaminan = nama_pemilik_jaminan;
    }

    public String getNomor_identitas_jaminan() {
        return nomor_identitas_jaminan;
    }

    public void setNomor_identitas_jaminan(String nomor_identitas_jaminan) {
        this.nomor_identitas_jaminan = nomor_identitas_jaminan;
    }

    public Button getView() {
        return view;
    }

    public void setView(Button view) {
        this.view = view;
    }

    public Button getUpdate() {
        return update;
    }

    public void setUpdate(Button update) {
        this.update = update;
    }

    public Button getDelete() {
        return delete;
    }

    public void setDelete(Button delete) {
        this.delete = delete;
    }
}
