package com.web.root.admin.service;

import org.springframework.ui.Model;

import com.web.root.admin.dto.AdminDTO;

public interface AdminService {

	public void getInfo(Model model);

	public void movie1(String code, Model model);
	
	public void modify1(int seats);

	public void unoccupied1(String movno, Model model);

	public void movie2(String code, Model model);
	
	public void modify2(int seats);

	public void movie3(String code, Model model);
	
	public void modify3(int seats);

	public void movie4(String code, Model model);

	public void modify4(int seats);

}