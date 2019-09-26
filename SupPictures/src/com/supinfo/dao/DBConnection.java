package com.supinfo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection getConnectionToDatabase(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Registered!");

            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/suppictures","root","");
        } catch (ClassNotFoundException e) {
            System.out.println("where is the driver");
            e.printStackTrace();
        }

        catch (SQLException e){
            System.out.println("Connection failed!!!");
            e.printStackTrace();
        }

        if (connection != null){
            System.out.println("Connection made to DB");
        }
        return connection;
    }

}
