package com.web.root.admin.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.web.root.admin.dto.AdminDTO;
import com.web.root.mybatis.admin.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper mapper;

	@Override
	public void getInfo(Model model) {
		model.addAttribute("movieList", mapper.getInfo());
	}

	@Override
	public void movie1(String code, Model model) {
		ArrayList<AdminDTO> list = mapper.movie1("1");
		model.addAttribute("info", list);
	}

	@Override
	public void modify1(int seats) {
		mapper.modify1(seats);
	}
	
	@Override
	public void unoccupied1(String movno, Model model) {
		model.addAttribute("unoccupied", mapper.unoccupied1("1"));
	}

	@Override
	public void movie2(String code, Model model) {
		ArrayList<AdminDTO> list = mapper.movie2("2");
		model.addAttribute("info", list);
	}

	@Override
	public void modify2(int seats) {
		mapper.modify2(seats);
	}

	@Override
	public void movie3(String code, Model model) {
		ArrayList<AdminDTO> list = mapper.movie3("3");
		model.addAttribute("info", list);
	}
	
	@Override
	public void modify3(int seats) {
		mapper.modify3(seats);
	}

	@Override
	public void movie4(String code, Model model) {
		ArrayList<AdminDTO> list = mapper.movie4("4");
		model.addAttribute("info", list);
	}


	@Override
	public void modify4(int seats) {
		mapper.modify4(seats);
	}
	

}
