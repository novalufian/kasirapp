package Application.conectify;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {

    private String uname = "RQSHf32ICl";
    private String pass = "uuKtBkypJs";
    private String host = "jdbc:mysql://remotemysql.com:3306/RQSHf32ICl";
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