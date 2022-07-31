package com.web.root.client.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.web.root.client.dto.ClientDTO;
import com.web.root.mybatis.client.ClientMapper;

@Service
public class ClientServiceImpl implements ClientService{
	
		@Autowired
		ClientMapper mapper;
		
		@Autowired
		Message ms;
		
		@GetMapping("/reserveSave2")
		public int reserveSave2(HttpServletRequest request, ClientDTO clientDTO) {
			clientDTO.setNo(request.getParameter("no"));
			clientDTO.setName(request.getParameter("name"));
			clientDTO.setTime(request.getParameter("title"));
			clientDTO.setTheater(request.getParameter("theater"));
			clientDTO.setSeats(Integer.parseInt(request.getParameter("seats")));
			clientDTO.setTime(request.getParameter("time"));
			clientDTO.setId(request.getParameter("id"));
			clientDTO.setPhone(request.getParameter("phone"));
			clientDTO.setPrice(Integer.parseInt(request.getParameter("price")));
			clientDTO.setCount(Integer.parseInt(request.getParameter("count")));
			
			try {
				return mapper.reserveSave2(clientDTO);
			} catch (Exception e) {
				e.printStackTrace();
				return 0;
			}
		} ;
		
		
		@Override
		public void reserveView2(String no, Model model) {
			ClientDTO dto = mapper.reserveView2(no);
			model.addAttribute("reserve2", dto);
		} //아래 reserveView를 위한 테스트용 코드
		
		@Override
		public void reserveView(String no, Model model) {
			ClientDTO dto = mapper.reserveView(no);
			model.addAttribute("reserve", dto);
		}

		@Override
		public void modify2(int seats) {
			mapper.modify2(seats);
		} 
		
	
		
}


