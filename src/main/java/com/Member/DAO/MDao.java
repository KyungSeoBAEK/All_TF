package com.Member.DAO;

import com.Member.DTO.MDto;


public interface MDao {

	public void joinDao(String mId, String mPw, String mName, String mPhone, String mAddr, String mEmail);
	public int checkIdDao(String mId);
	public int checkPwDao(String mId, String mPw);
	public void infoModify(String mPw,String mPhone,String mAddr,String mEmail , String mId);
	public void deleteDao(String mNum);
	public MDto loginOkDao(String mId);
}
