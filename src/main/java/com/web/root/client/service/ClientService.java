package com.web.root.client.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.web.root.client.dto.ClientDTO;

public interface ClientService {
		
		public void reserveView(String no, Model model);
	
//		public int reserveSave2(ClientDTO client);임시주석
	
		public int reserveSave2(HttpServletRequest request, ClientDTO clientDTO);

		public void reserveView2(String no, Model model); 
		
		public void modify2(int seats);
		
}
