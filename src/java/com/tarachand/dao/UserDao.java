package com.tarachand.dao;

import com.tarachand.entities.User;
import java.sql.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;
        try {
            //user -> database
            String query = "insert into users(name,email,password,gender,mobile,createdIP,lastAccessedIP) values(?,?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getMobile());
            pstmt.setString(6, user.getCreatedIP());
            pstmt.setString(7, user.getLastAccessedIP());
            
            pstmt.executeUpdate();
            f = true;

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;

    }
    
    //get user by email and password
    public User getUserByEmailAndPassword(String email, String password){
        
        User usr = null;
        
        try {
            String query = "select * from users where email=? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                usr = new User();
                usr.setName(rs.getString("name"));
                usr.setEmail(rs.getString("email"));
                usr.setPassword(rs.getString("password"));
                usr.setGender(rs.getString("gender"));
                usr.setMobile(rs.getString("mobile"));
                usr.setLastAccessedIP(rs.getString("lastAccessedIP"));                
                usr.setProfile(rs.getString("profile"));                
            }
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return usr;
    }

}
