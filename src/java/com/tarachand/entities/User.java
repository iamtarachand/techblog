package com.tarachand.entities;
import java.sql.Timestamp;

public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String gender;
    private String mobile;
    private Timestamp dateTime;
    private String createdIP;
    private String lastAccessedIP;
    private String profile;
    

    public User() {
    }

    public User(String name, String email, String password, String gender, String mobile) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.password = password;
        this.mobile = mobile;
    }

    public User(String name, String email, String password, String gender, String mobile, String createdIP, String lastAccessedIP) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.password = password;
        this.mobile = mobile;
        this.createdIP = createdIP;
        this.lastAccessedIP = lastAccessedIP;
    }

    public User(int id, String name, String email, String password, String gender, String mobile, String createdIP, String lastAccessedIP) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.password = password;
        this.mobile = mobile;
        this.createdIP = createdIP;
        this.lastAccessedIP = lastAccessedIP;
    }

    public User(String lastAccessedIP) {
        this.lastAccessedIP = lastAccessedIP;
    }
    
//    Getter and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public String getCreatedIP() {
        return createdIP;
    }

    public void setCreatedIP(String createdIP) {
        this.createdIP = createdIP;
    }

    public String getLastAccessedIP() {
        return lastAccessedIP;
    }

    public void setLastAccessedIP(String lastAccessedIP) {
        this.lastAccessedIP = lastAccessedIP;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
    
    
}
