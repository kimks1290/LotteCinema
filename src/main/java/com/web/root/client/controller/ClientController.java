package com.web.root.client.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.web.root.client.dto.ClientDTO;
import com.web.root.client.service.ClientService;

@Controller
@RequestMapping("/admin")
public class ClientController {

	@Autowired
	ClientService cs;
	
//	@GetMapping("/reserveSave2")
//	public String reserveSave2(ClientDTO client) {
//		int result = cs.reserveSave2(client);
//		if(result == 1) {
//			return "redirect:movieTitle";
//		}
//		return "redirect:reserveView2";
//	} 임시주석
	
	
	
//	@GetMapping("/reserveView2")
//	public String reserveView2(@RequestParam(value="no", required=false) String no, Model model) {
//		cs.reserveView2(no, model);
//		
//		return "admin/reserveView2";
//	} admin이랑 중복(지워야할듯)
	
	
	
	}


/*
@Override
	public String writeSave(MultipartHttpServletRequest mul, HttpServletRequest request) {
		
		BoardDTO dto = new BoardDTO();
		dto.setId(mul.getParameter("id"));
		dto.setTitle(mul.getParameter("title"));
		dto.setContent(mul.getParameter("content"));
		
		int result = 0;
		try {
			result = mapper.writeSave(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String msg, url;
		if(result == 1) {
			msg = "새글이 등록 되었습니다..";
			url = "/board/boardAllList";
		} else {
			msg = "문제가 발생했습니다..";
			url = "/board/writeForm";
		}
		return bfs.getMessage(request, msg, url);
		
	}
*/



















