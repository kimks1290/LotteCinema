package com.web.root.member.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.web.root.dto.NoMemberDTO;
import com.web.root.dto.ReservationDTO;
import com.web.root.member.service.MemberService;
import com.web.root.session.name.MemberSession;

@Controller
public class LoginController implements MemberSession{

	@Autowired
	private MemberService memberService;

	@GetMapping("index")
	public String index() {
		System.out.println("index controller 실행");
		return "index";
	}
	
	@GetMapping("/member/event")
	public String event() {
		return "member/event";
	}

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	// 로그인 첫 화면 요청 메소드
	@RequestMapping(value = "member/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {

		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

		// https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		// redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("네이버:" + naverAuthUrl);

		// 네이버
		model.addAttribute("url", naverAuthUrl);

		/* 생성한 인증 URL을 View로 전달 */
		return "member/login";
	}

	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "naver/index", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {

		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		// 1.로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken); // String형식의 json 데이터

		// 2. String 형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;

		// 3. 데이터 파싱
		// Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		// response의 nickname값 파싱
		String nickname = (String) response_obj.get("nickname");

		System.out.println(nickname);

		// 4. 파싱 닉네임 세션으로 저장
		session.setAttribute("sessionId", nickname);
		model.addAttribute("result", apiResult);

		return "index";
	}

	// 로그아웃
	@RequestMapping(value = "member/logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) throws IOException {
		System.out.println("logout 실행");
		session.invalidate();

		return "redirect:/index";
	}

//	-----------------------------------------------------------------------------------------------------------------

	@RequestMapping(value = "/kakao/index", method = RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) {
		System.out.println("########" + code);
		String access_Token = memberService.getAccessToken(code);

		HashMap<String, Object> userInfo = memberService.getUserInfo(access_Token);
//	      클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
		String nickName = (String) userInfo.get("nickname");
		if (userInfo.get("email") != null) {
			session.setAttribute("userId", userInfo.get("email"));
			session.setAttribute("access_Token", access_Token);
			session.setAttribute("nickname", nickName);
		}
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###userInfo#### : " + userInfo.get("email"));
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###profile_image#### : " + userInfo.get("profile_image"));

		return "index";
	}
	
	//비회원 로그인
	@RequestMapping("member/register")
	public String register(NoMemberDTO nomember, HttpSession session) {
		int result=memberService.register(nomember);
		String noName = nomember.getNoName();
		if(result==1) {
			session.setAttribute("noName", noName);
			return "index";
		}
		return "redircet:member/login";
	}
	
	//회원 로그인
	@PostMapping("member/user_check")
	public String userCheck(HttpServletRequest request, RedirectAttributes rs) {
		int result = memberService.user_check(request);
		if(result==0) {
			rs.addAttribute("id", request.getParameter("id"));
			return "redirect:/member/index";
		}
		return "redirect:/member/login";
	}

	@RequestMapping("member/index")
	public String successLogin(@RequestParam("id") String id, HttpSession session) {
		session.setAttribute(LOGIN, id);
		return "index";
	}
	
	
	@PostMapping("member/find_movie")
	public String find_movie(HttpServletRequest request, RedirectAttributes rs) {
		int result = memberService.find_movie(request);
		if(result == 0) {
			rs.addAttribute("phone", request.getParameter("phone"));
			return "redirect:/no_member/reservation";
		}
		return "redirect:/member/login";
	}
	
	@RequestMapping("no_member/reservation")
	public String reservationNoMem(@ModelAttribute ReservationDTO dto, HttpSession session) {
		session.setAttribute("reservation", dto);
		return "member/noMemReservation";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
