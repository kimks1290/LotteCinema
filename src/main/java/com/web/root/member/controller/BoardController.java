package com.web.root.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.root.board.service.BoardService;
import com.web.root.dto.BoardDTO;


@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	BoardService bs;
	
	@GetMapping("question")
	public String Question() {
		return "board/question";
	}
	
	@GetMapping("writeform")
	public String writeform() {
		return "board/writeform";
	}
		
	@GetMapping("boardAllList")
	public String boardAllList(Model model, @RequestParam(value="num", required = false, defaultValue = "1") int num) {
		bs.boardAllList(model, num);
		return "board/boardAllList";
	}
	
	@PostMapping("writeSave")
	public void writeSave( 
			HttpServletResponse response, 
			HttpServletRequest request) throws IOException{
	      
	      String message = bs.writeSave(request);
	      
	      response.setContentType("text/html; charset=utf-8");
	      PrintWriter out = response.getWriter();
	      out.print(message);
	 }
	
	@GetMapping("contentView")
	 public String contentView(@RequestParam int writeNo, Model model) {
		 bs.contentView(writeNo, model);
		 return "board/contentView";
	 }
	
	@GetMapping("modifyform")
	 public String modify_form(@RequestParam int writeNo, Model model) {
		 bs.contentView(writeNo, model);
		 return "board/modifyform";
	 }
	
	@GetMapping("answerform")
	 public String answer_form(@RequestParam int writeNo, Model model) {
		 bs.contentView(writeNo, model);
		 return "board/answerform";
	 }
	
	@PostMapping("modify")
	 public void modify(HttpServletRequest request, HttpServletResponse response) throws Exception{
		 
				
		 String message = bs.modify(request);
		 response.setContentType("text/html; charset=utf-8");
		 PrintWriter out = response.getWriter();
		 out.print(message);
	 }
	
	@PostMapping("answer")
	public String answer(BoardDTO board) {
		int result = bs.answer(board);
		if(result == 1)
			return "redirect:boardAllList";
		return "redirect:answerform";
	}
	
	@GetMapping("delete")
	 public void delete(@RequestParam int writeNo, HttpServletRequest request, HttpServletResponse response) throws Exception{
		 
		 String message = bs.boardDelete(writeNo, request);
		 response.setContentType("text/html; charset=utf-8");
		 PrintWriter out = response.getWriter();
		 out.print(message);
	 }


}
