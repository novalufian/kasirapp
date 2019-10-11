package Application.model;

import javafx.scene.control.Button;

public class Model_cart_barang {

    Integer no,harga, jumlah, potongan, totalharga;
    String id, kode, nama, satuan, kodeKategori;
    Button delete;

    public Model_cart_barang(Integer no,String id, String kode, String nama, String kodeKategori, Integer harga, Integer jumlah, Integer potongan, String satuan, Integer totalharga,  Button delete) {
        this.no = no;
        this.harga = harga;
        this.jumlah = jumlah;
        this.potongan = potongan;
        this.kodeKategori = kodeKategori;
        this.totalharga = totalharga;
        this.id = id;
        this.kode = kode;
        this.nama = nama;
        this.satuan = satuan;
        this.delete = delete;
    }

    public String getKodeKategori() {
        return kodeKategori;
    }

    public void setKodeKategori(String kodeKategori) {
        this.kodeKategori = kodeKategori;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public Integer getHarga() {
        return harga;
    }

    public void setHarga(Integer harga) {
        this.harga = harga;
    }

    public Integer getJumlah() {
        return jumlah;
    }

    public void setJumlah(Integer jumlah) {
        this.jumlah = jumlah;
    }

    public Integer getPotongan() {
        return potongan;
    }

    public void setPotongan(Integer potongan) {
        this.potongan = potongan;
    }

    public Integer getTotalharga() {
        return totalharga;
    }

    public void setTotalharga(Integer totalharga) {
        this.totalharga = totalharga;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getKode() {
        return kode;
    }

    public void setKode(String kode) {
        this.kode = kode;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getSatuan() {
        return satuan;
    }

    public void setSatuan(String satuan) {
        this.satuan = satuan;
    }

    public Button getDelete() {
        return delete;
    }

    public void setDelete(Button delete) {
        this.delete = delete;
    }
}