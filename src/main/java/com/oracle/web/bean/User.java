package com.oracle.web.bean;

public class User {
    private Integer id;

    private String name;

    private String username;

    private String password;

    private String phone;

    private String zctime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getZctime() {
        return zctime;
    }

    public void setZctime(String zctime) {
        this.zctime = zctime == null ? null : zctime.trim();
    }
}