package com.oracle.web.bean;

public class Admin {
    private Integer id;

    private String name;

    private String phone;

    private String username;

    private String password;

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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
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

	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", phone=" + phone + ", username=" + username + ", password="
				+ password + "]";
	}

	public Admin(Integer id, String name, String phone, String username, String password) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.username = username;
		this.password = password;
	}
    
}