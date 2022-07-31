package com.web.root.member.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.web.root.dto.MemberDTO;
import com.web.root.dto.NoMemberDTO;

public interface MemberService {


	//카카오 로그인
	public String getAccessToken(String authorize_code);
	public HashMap<String, Object> getUserInfo(String access_Token);
	
	//회원
	public int user_check(HttpServletRequest request);
	
	//비회원
	public int register(NoMemberDTO nomember);
	
	
	public int find_movie(HttpServletRequest request);
	
	//---------------------------------------------------------
	
	public String writesave(HttpServletRequest request);

	public int checkId(HttpServletRequest request);

	public MemberDTO viewinfo(String id, Model model);

	public String modify(HttpServletRequest request);

	public String memberDelete(String id, HttpServletRequest request);

	
}
