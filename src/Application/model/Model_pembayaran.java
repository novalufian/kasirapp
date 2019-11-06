package Application.model;

import javafx.scene.control.Button;

import java.util.Date;

public class Model_pembayaran {

    Integer no, total_pembelian, jumlah_terbayar, piutang_sisa;
    String id,member, faktur;
    Boolean cara_pembayaran;
    Date jatuh_tempo;
    Button proses;

    public Model_pembayaran(Integer no, Integer total_pembelian, Integer jumlah_terbayar, Integer piutang_sisa, String id, String member, String faktur, Date jatuh_tempo, Boolean cara_pembayaran, Button proses) {
        this.no = no;
        this.total_pembelian = total_pembelian;
        this.jumlah_terbayar = jumlah_terbayar;
        this.piutang_sisa = piutang_sisa;
        this.id = id;
        this.member = member;
        this.faktur = faktur;
        this.jatuh_tempo = jatuh_tempo;
        this.cara_pembayaran = cara_pembayaran;
        this.proses = proses;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public Integer getTotal_pembelian() {
        return total_pembelian;
    }

    public void setTotal_pembelian(Integer total_pembelian) {
        this.total_pembelian = total_pembelian;
    }

    public Integer getJumlah_terbayar() {
        return jumlah_terbayar;
    }

    public void setJumlah_terbayar(Integer jumlah_terbayar) {
        this.jumlah_terbayar = jumlah_terbayar;
    }

    public Integer getPiutang_sisa() {
        return piutang_sisa;
    }

    public void setPiutang_sisa(Integer piutang_sisa) {
        this.piutang_sisa = piutang_sisa;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMember() {
        return member;
    }

    public void setMember(String member) {
        this.member = member;
    }

    public String getFaktur() {
        return faktur;
    }

    public void setFaktur(String faktur) {
        this.faktur = faktur;
    }

    public Date getJatuh_tempo() {
        return jatuh_tempo;
    }

    public void setJatuh_tempo(Date jatuh_tempo) {
        this.jatuh_tempo = jatuh_tempo;
    }

    public Boolean getCara_pembayaran() {
        return cara_pembayaran;
    }

    public void setCara_pembayaran(Boolean cara_pembayaran) {
        this.cara_pembayaran = cara_pembayaran;
    }

    public Button getProses() {
        return proses;
    }

    public void setProses(Button proses) {
        this.proses = proses;
    }
}
