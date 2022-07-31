package com.web.root.member.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.root.mybatis.member.MemberMapper;

@Service
public class MemberFileServiceImpl implements MemberFileService {
	
	@Autowired
	MemberMapper mapper;

	@Override
	public String getMessage(HttpServletRequest request, String msg, String url) {
		String message = null;
		String path = request.getContextPath();
		message = "<script>alert('"+msg+"');";
		message += "location.href='" + path + url + "';</script>";
		return message;
	}

	
}
