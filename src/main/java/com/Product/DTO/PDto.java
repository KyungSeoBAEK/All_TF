package com.Product.DTO;

public class PDto {

	private int pNum;
	private String pName;
	private String pCatecode;
	private String pPrice;
	private String pStock;
	private String pDes;
	private String pImg;
	
	
	public PDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PDto(int pNum, String pName, String pCatecode, String pPrice, String pStock, String pDes, String pImg) {
		super();
		this.pNum = pNum;
		this.pName = pName;
		this.pCatecode = pCatecode;
		this.pPrice = pPrice;
		this.pStock = pStock;
		this.pDes = pDes;
		this.pImg = pImg;
	}
	
	
	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpCatecode() {
		return pCatecode;
	}
	public void setpCatecode(String pCatecode) {
		this.pCatecode = pCatecode;
	}
	public String getpPrice() {
		return pPrice;
	}
	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}
	public String getpStock() {
		return pStock;
	}
	public void setpStock(String pStock) {
		this.pStock = pStock;
	}
	public String getpDes() {
		return pDes;
	}
	public void setpDes(String pDes) {
		this.pDes = pDes;
	}
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	
	
	
	
}
