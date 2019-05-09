package com.oracle.web.bean;

public class FenLei {
    private Integer fenleiid;

    private String fenleiname;

    public Integer getFenleiid() {
        return fenleiid;
    }

    public void setFenleiid(Integer fenleiid) {
        this.fenleiid = fenleiid;
    }

    public String getFenleiname() {
        return fenleiname;
    }

    public void setFenleiname(String fenleiname) {
        this.fenleiname = fenleiname == null ? null : fenleiname.trim();
    }
}