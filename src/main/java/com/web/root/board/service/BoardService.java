package com.web.root.board.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.web.root.dto.BoardDTO;


public interface BoardService {

	public String writeSave(HttpServletRequest request);

	public void boardAllList(Model model, int num);

	public void contentView(int writeNo, Model model);

	public String modify(HttpServletRequest request);

	public String boardDelete(int writeNo, HttpServletRequest request);

	public int answer(BoardDTO board);
	

}
