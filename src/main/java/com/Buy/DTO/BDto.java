package com.Buy.DTO;

import java.sql.Date;

public class BDto {
	private int bNum;
	private String bName;
	private String bPhone;
	private String bAddr;
	private String bEamil;
	private String bPstock;
	private String bPimg;
	private String bTotal;
	private Date bDate;
	
	
	
	public BDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public BDto(int bNum, String bName, String bPhone, String bAddr, String bEamil, String bPstock, String bPimg,
			String bTotal, Date bDate) {
		super();
		this.bNum = bNum;
		this.bName = bName;
		this.bPhone = bPhone;
		this.bAddr = bAddr;
		this.bEamil = bEamil;
		this.bPstock = bPstock;
		this.bPimg = bPimg;
		this.bTotal = bTotal;
		this.bDate = bDate;
	}



	public int getbNum() {
		return bNum;
	}



	public void setbNum(int bNum) {
		this.bNum = bNum;
	}



	public String getbName() {
		return bName;
	}



	public void setbName(String bName) {
		this.bName = bName;
	}



	public String getbPhone() {
		return bPhone;
	}



	public void setbPhone(String bPhone) {
		this.bPhone = bPhone;
	}



	public String getbAddr() {
		return bAddr;
	}



	public void setbAddr(String bAddr) {
		this.bAddr = bAddr;
	}



	public String getbEamil() {
		return bEamil;
	}



	public void setbEamil(String bEamil) {
		this.bEamil = bEamil;
	}



	public String getbPstock() {
		return bPstock;
	}



	public void setbPstock(String bPstock) {
		this.bPstock = bPstock;
	}



	public String getbPimg() {
		return bPimg;
	}



	public void setbPimg(String bPimg) {
		this.bPimg = bPimg;
	}



	public String getbTotal() {
		return bTotal;
	}



	public void setbTotal(String bTotal) {
		this.bTotal = bTotal;
	}



	public Date getbDate() {
		return bDate;
	}



	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	
	
}
