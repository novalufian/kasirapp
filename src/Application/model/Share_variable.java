package Application.model;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Share_variable {
    private final StringProperty kodebarang = new SimpleStringProperty();

    public String getKodebarang() {
        return kodebarang.get();
    }

    public StringProperty kodebarangProperty() {
        return kodebarang;
    }

    public void setKodebarang(String kodebarang) {
        this.kodebarang.set(kodebarang);
    }
}
