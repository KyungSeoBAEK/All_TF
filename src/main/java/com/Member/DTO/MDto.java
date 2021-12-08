package com.Member.DTO;

import java.sql.Date;

public class MDto {

	private int mNum;
	private String mID;
	private String mPW;
	private String mName;
	private String mPhone;
	private String mAddr;
	private String mEmail;
	private Date mDate;
	
	
	public MDto(int mNum, String mID, String mPW, String mName, String mPhone, String mAddr, String mEmail,
			Date mDate) {
		super();
		this.mNum = mNum;
		this.mID = mID;
		this.mPW = mPW;
		this.mName = mName;
		this.mPhone = mPhone;
		this.mAddr = mAddr;
		this.mEmail = mEmail;
		this.mDate = mDate;
	}

	public MDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public int getmNum() {
		return mNum;
	}



	public void setmNum(int mNum) {
		this.mNum = mNum;
	}



	public String getmID() {
		return mID;
	}



	public void setmID(String mID) {
		this.mID = mID;
	}



	public String getmPW() {
		return mPW;
	}



	public void setmPW(String mPW) {
		this.mPW = mPW;
	}



	public String getmName() {
		return mName;
	}



	public void setmName(String mName) {
		this.mName = mName;
	}



	public String getmPhone() {
		return mPhone;
	}



	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}



	public String getmAddr() {
		return mAddr;
	}



	public void setmAddr(String mAddr) {
		this.mAddr = mAddr;
	}



	public String getmEmail() {
		return mEmail;
	}



	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}



	public Date getmDate() {
		return mDate;
	}



	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}
	
	
	
	
}
