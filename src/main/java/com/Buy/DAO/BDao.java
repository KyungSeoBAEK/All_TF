package com.Buy.DAO;

import java.util.ArrayList;

import com.Buy.DTO.BDto;

public interface BDao {
	
	public void orderDao(String bNum, String bName, String bPhone, String bAddr, String bEmail, String bPname, String bPstock, String bPimg, String bTotal);
	public ArrayList<BDto> listDao();
	

}
