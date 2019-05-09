package com.oracle.web.bean;

public class Book {
    private Integer id;

    private String fenleiname;

    private String bookname;

    private String price;

    private String publisher;

    private String status;

    private String borrow;

    private Integer fId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFenleiname() {
        return fenleiname;
    }

    public void setFenleiname(String fenleiname) {
        this.fenleiname = fenleiname == null ? null : fenleiname.trim();
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher == null ? null : publisher.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getBorrow() {
        return borrow;
    }

    public void setBorrow(String borrow) {
        this.borrow = borrow == null ? null : borrow.trim();
    }

    public Integer getfId() {
        return fId;
    }

    public void setfId(Integer fId) {
        this.fId = fId;
    }

	public Book(Integer id, String fenleiname, String bookname, String price, String publisher, String status,
			String borrow, Integer fId) {
		super();
		this.id = id;
		this.fenleiname = fenleiname;
		this.bookname = bookname;
		this.price = price;
		this.publisher = publisher;
		this.status = status;
		this.borrow = borrow;
		this.fId = fId;
	}

	@Override
	public String toString() {
		return "Book [id=" + id + ", fenleiname=" + fenleiname + ", bookname=" + bookname + ", price=" + price
				+ ", publisher=" + publisher + ", status=" + status + ", borrow=" + borrow + ", fId=" + fId + "]";
	}
    
}