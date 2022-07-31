package com.web.root.mybatis.admin;

import java.util.ArrayList;

import com.web.root.admin.dto.AdminDTO;

public interface AdminMapper {

	public ArrayList<AdminDTO> getInfo();

	public ArrayList<AdminDTO> movie1(String code);

	public ArrayList<AdminDTO> movie1seats(String code);
	
	public void modify1(int seats);

	public Integer unoccupied1(String movNo);

	public ArrayList<AdminDTO> movie2(String code);

	public void modify2(int seats);

	public ArrayList<AdminDTO> movie3(String code);
	
	public void modify3(int seats);

	public ArrayList<AdminDTO> movie4(String code);


	public void modify4(int seats);

}
