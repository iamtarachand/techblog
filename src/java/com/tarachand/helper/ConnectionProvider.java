package com.tarachand.helper;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
    private static Connection con;
    
    public static Connection getConnection(){
        
        try {
            
            if (con==null) {               
           
                // load the class
                Class.forName("com.mysql.cj.jdbc.Driver");

                // create the connection
                String url = "jdbc:mysql://localhost:3306/tech_blog";
                String username = "root";
                String pass = "RajMahi123@";

                con = DriverManager.getConnection(url,username,pass);
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }    
}
