package com.web.root.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.root.member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	MemberService ms;
	
	@GetMapping("mypage")
	public String mypage() {
		return "member/mypage";
	}
	
	@GetMapping("writeform")
	public String writeform() {
		return "member/writeform";
	}
	
	@PostMapping("writesave")
	public void writesave(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String message = ms.writesave(request);
	      
	    response.setContentType("text/html; charset=utf-8");
	    PrintWriter out = response.getWriter();
	    out.print(message);
	}
	
	@PostMapping("checkid")
	public void checkid(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int message = ms.checkId(request);
		
		response.setContentType("text/html; charset=utf-8");
	    PrintWriter out = response.getWriter();
	    out.print(message);
	}
	
	@GetMapping("loginok")
	public String loginok() {
		return "member/loginok";
	}
	
	
	@GetMapping("viewinfo")
	public String viewinfo(HttpSession session, Model model) {
		
		String id = (String) session.getAttribute("id");
		ms.viewinfo(id, model);
		
		return "member/viewinfo";
	}
	
	@GetMapping("modifyform")
	public String modifyform(HttpSession session, Model model) {
		
		String id = (String) session.getAttribute("id");
		ms.viewinfo(id, model);
		
		return "member/modifyform";
	}
	
	@PostMapping("modify")
	public void modify(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String message = ms.modify(request);
		
		response.setContentType("text/html; charset=utf-8");
	    PrintWriter out = response.getWriter();
	    out.print(message);
	}
	
	@GetMapping("delete")
	public void delete(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = (String) session.getAttribute("id");
		
		String message = ms.memberDelete(id, request);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(message);
	}
	
	@GetMapping("sample")
	public String sample() {
		return "member/viewinfo";
	}
	
	
}
