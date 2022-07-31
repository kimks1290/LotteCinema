package com.web.root.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.web.root.mybatis.movie.MovieMapper;

@Service
public class MoviceServiceImpl implements MovieService {
	
	@Autowired
	MovieMapper mapper;

	@Override
	public void contentView(int writeNo, Model model) {
		model.addAttribute("data", mapper.contentView(writeNo));		
	}	
	

}
