package Application.conectify;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {
//    private String uname = "RQSHf32ICl";
//    private String pass = "uuKtBkypJs";
//    private String host = "jdbc:mysql://remotemysql.com:3306/RQSHf32ICl";
    private String uname = "root";
    private String pass = "leon1108";
    private String host = "jdbc:mysql://192.168.1.2:3306/kasirapp";
    public Connection connection;

    public Connection getConnection(){

        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(host ,uname, pass);
        }catch (Exception e){
            e.printStackTrace();
        }

        return connection;

    }
}