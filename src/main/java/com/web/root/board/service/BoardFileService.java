package com.web.root.board.service;

import javax.servlet.http.HttpServletRequest;

public interface BoardFileService {

	String getMessage(HttpServletRequest request, String msg, String url);

}
