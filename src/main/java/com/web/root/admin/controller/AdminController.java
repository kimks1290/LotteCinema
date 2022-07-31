package com.web.root.admin.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.root.admin.service.AdminService;
import com.web.root.client.dto.ClientDTO;
import com.web.root.client.service.ClientService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService as;

	@Autowired
	private ClientService cs;

	// movieTitle.jsp로 admin db값 전송하기
	@GetMapping("/movieTitle")
	public String getInfo(String code, Model model) {
		as.getInfo(model);
		System.out.println(model);
		return "/admin/movieTitle";
	}

	// movie1.jsp로 admin db값 전송하기
	@GetMapping("/movie1")
	public String getMovie1(String movno, String code, Model model) {
		as.movie1(code, model);
		as.getInfo(model);
		as.unoccupied1(movno, model);
		System.out.println(model);
		return "/admin/movie1";
	}

	// movie1.jsp에서 좌석 예매 정보 변경
	@GetMapping("/modify1")
	public String modify1(Model model, /* RedirectAttributes ra, */ @RequestParam("no") String no,
			HttpServletRequest request, HttpServletResponse response, ClientDTO clientDTO) throws IOException {

//		ra.addAttribute("no", request.getParameter("no"));
//		System.out.println(request.getParameter("no"));
		String[] seatArray = request.getParameterValues("seats");

		// 좌석 여러개 선택하기
		for (String seat : seatArray) {
			System.out.println("seat: " + seat);
			as.modify1(Integer.parseInt(seat));
		}

		// 예매정보 저장하기
		int result = cs.reserveSave2(request, clientDTO);

		// 예매후 페이지 이동
		if (result == 1) {
			System.out.println("삽입 성공");
			// 예매 성공후 예매 정보확인
			cs.reserveView(no, model);//
			return "/admin/reserveView";
		} else {
			System.out.println("삽입 실패");
			return "/admin/movie1";
		}

	}

	// movie2.jsp로 admin db값 전송하기
	@GetMapping("/movie2")
	public String getMovie2(String code, Model model) {
		as.movie2(code, model);
		as.getInfo(model);
		System.out.println(model);
		return "/admin/movie2";
	}

	// movie1.jsp에서 좌석 예매 정보 변경
	@GetMapping("/modify2")
	public String modify2(Model model, /* RedirectAttributes ra, */ @RequestParam("no") String no,
			HttpServletRequest request, HttpServletResponse response, ClientDTO clientDTO) throws IOException {

//		ra.addAttribute("no", request.getParameter("no"));
//		System.out.println(request.getParameter("no"));
		String[] seatArray = request.getParameterValues("seats");

		// 좌석 여러개 선택하기
		for (String seat : seatArray) {
			System.out.println("seat: " + seat);
			as.modify2(Integer.parseInt(seat));
		}

		// 예매정보 저장하기
		int result = cs.reserveSave2(request, clientDTO);

		// 예매후 페이지 이동
		if (result == 1) {
			System.out.println("삽입 성공");
			// 예매 성공후 예매 정보확인
			cs.reserveView(no, model);//
			return "/admin/reserveView";
		} else {
			System.out.println("삽입 실패");
			return "/admin/movie2";
		}

	}

	// movie3.jsp로 admin db값 전송하기
	@GetMapping("/movie3")
	public String getMovie3(String code, Model model) {
		as.movie3(code, model);
		as.getInfo(model);
		System.out.println(model);
		return "/admin/movie3";
	}

	// movie1.jsp에서 좌석 예매 정보 변경
	@GetMapping("/modify3")
	public String modify3(Model model, /* RedirectAttributes ra, */ @RequestParam("no") String no,
			HttpServletRequest request, HttpServletResponse response, ClientDTO clientDTO) throws IOException {

//		ra.addAttribute("no", request.getParameter("no"));
//		System.out.println(request.getParameter("no"));
		String[] seatArray = request.getParameterValues("seats");

		// 좌석 여러개 선택하기
		for (String seat : seatArray) {
			System.out.println("seat: " + seat);
			as.modify3(Integer.parseInt(seat));
		}

		// 예매정보 저장하기
		int result = cs.reserveSave2(request, clientDTO);

		// 예매후 페이지 이동
		if (result == 1) {
			System.out.println("삽입 성공");
			// 예매 성공후 예매 정보확인
			cs.reserveView(no, model);//
			return "/admin/reserveView";
		} else {
			System.out.println("삽입 실패");
			return "/admin/movie2";
		}

	}
	
	// movie4.jsp로 admin db값 전송하기
	@GetMapping("/movie4")
	public String getMovie4(String code, Model model) {
		as.movie4(code, model);
		as.getInfo(model);
		System.out.println(model);
		return "/admin/movie4";
	}

	// movie1.jsp에서 좌석 예매 정보 변경
	@GetMapping("/modify4")
	public String modify4(Model model, /* RedirectAttributes ra, */ @RequestParam("no") String no,
			HttpServletRequest request, HttpServletResponse response, ClientDTO clientDTO) throws IOException {

//		ra.addAttribute("no", request.getParameter("no"));
//		System.out.println(request.getParameter("no"));
		String[] seatArray = request.getParameterValues("seats");

		// 좌석 여러개 선택하기
		for (String seat : seatArray) {
			System.out.println("seat: " + seat);
			as.modify4(Integer.parseInt(seat));
		}

		// 예매정보 저장하기
		int result = cs.reserveSave2(request, clientDTO);

		// 예매후 페이지 이동
		if (result == 1) {
			System.out.println("삽입 성공");
			// 예매 성공후 예매 정보확인
			cs.reserveView(no, model);//
			return "/admin/reserveView";
		} else {
			System.out.println("삽입 실패");
			return "/admin/movie2";
		}

	}
	
	@GetMapping("logout1")
	public String logout(HttpSession session) {
		if (session.getAttribute("loginUser") != null) {
			session.invalidate();
		}
		return "redirect:/admin/movie1";
	}

	@GetMapping("/jstest")
	public String jstest() {
		return "/admin/jstest";
	}

}

