package Application.libs;

import Application.model.Model_cart_barang;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class Global_share_variable {

    private static ObservableList<Model_cart_barang> cart = FXCollections.observableArrayList();

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
        cart.removeAll();
    }

    public static void removeitem(Integer index){
        cart.remove(index);
    }
}
