package com.oracle.web.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Monster {
    private Integer monsterid;

    private String mostername;

    private String email;
@DateTimeFormat(pattern="yyyy-MM-dd")
    private Date birthday;
@DateTimeFormat(pattern="yyyy-MM-dd")

    private Date entry;

    private Integer school;

    public Integer getMonsterid() {
        return monsterid;
    }

    public void setMonsterid(Integer monsterid) {
        this.monsterid = monsterid;
    }

    public String getMostername() {
        return mostername;
    }

    public void setMostername(String mostername) {
        this.mostername = mostername == null ? null : mostername.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getEntry() {
        return entry;
    }

    public void setEntry(Date entry) {
        this.entry = entry;
    }

    public Integer getSchool() {
        return school;
    }

    public void setSchool(Integer school) {
        this.school = school;
    }

	@Override
	public String toString() {
		return "Monster [monsterid=" + monsterid + ", mostername=" + mostername + ", email=" + email + ", birthday="
				+ birthday + ", entry=" + entry + ", school=" + school + "]";
	}
    
}