package com.web.root.member.service;

import javax.servlet.http.HttpServletRequest;


public interface MemberFileService {
	
	String getMessage(HttpServletRequest request, String msg, String url);

}
