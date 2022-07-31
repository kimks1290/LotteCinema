package com.web.root.mybatis.client;

import com.web.root.client.dto.ClientDTO;

public interface ClientMapper {
	
	public ClientDTO reserveView(String no); 
	
	public int reserveSave2(ClientDTO clientDTO); //dto
	
	public ClientDTO reserveView2(String no); 
	
	public void upCount1(String no); 
	
	public void modify2(int seats); 
	
	
}

 