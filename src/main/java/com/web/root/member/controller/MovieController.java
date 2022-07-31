package com.web.root.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.root.movie.service.MovieService;

@Controller
@RequestMapping("movie")
public class MovieController {
	
	@Autowired
	MovieService ms;
	
	@GetMapping("recent")
	public String recentMovie() {
		return "movie/recent";
	}
	
	@GetMapping("future")
	public String futureMovie() {
		return "movie/future";
	}
	
	@GetMapping("info")
	 public String contentView(@RequestParam int movieNo, Model model) {
		 ms.contentView(movieNo, model);
		 return "movie/info";
	 }
	
	

}
