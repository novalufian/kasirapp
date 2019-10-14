package Application.libs;

import Application.model.Model_cart_barang;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.stage.Stage;

public class Global_share_variable {

    private static String idPenjualan;
    private static String idKasir;
    private static ObservableList<Model_cart_barang> cart = FXCollections.observableArrayList();
    private static Stage pembayaranStage ;
    private static Class mainClass ;

    public static void setCart(ObservableList<Model_cart_barang> cart) {
        Global_share_variable.cart = cart;
    }

    public static Class getMainClass() {
        return mainClass;
    }

    public static void setMainClass(Class mainClass) {
        Global_share_variable.mainClass = mainClass;
    }

    public static Stage getPembayaranStage() {
        return pembayaranStage;
    }

    public static void setPembayaranStage(Stage pembayaranStage) {
        Global_share_variable.pembayaranStage = pembayaranStage;
    }

    public static String getIdPenjualan() {
        return idPenjualan;
    }

    public static void setIdPenjualan(String idPenjualan) {
        Global_share_variable.idPenjualan = idPenjualan;
    }

    public static String getIdKasir() {
//        return idKasir;
        return "USR-001";
    }

    public static void setIdKasir(String idKasir) {
        Global_share_variable.idKasir = idKasir;
    }

    public static ObservableList<Model_cart_barang> getCart() {
        return cart;
    }

    public static void setCart(Model_cart_barang item) {
        cart.add(item);
    }

    public static void updateValueCart(Integer index, Model_cart_barang item){
        cart.set(index, item);
    }

    public static void clearCart(){
        cart.removeAll(cart);
    }

    public static void removeitem(Model_cart_barang obj){
        cart.remove(obj);
    }

    public static void resetGlobalVariabale(){
        setIdPenjualan(null);
        clearCart();
    }

}