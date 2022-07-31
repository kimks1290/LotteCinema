package com.web.root.member.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.web.root.dto.MemberDTO;
import com.web.root.dto.NoMemberDTO;
import com.web.root.dto.ReservationDTO;
import com.web.root.mybatis.member.MemberMapper;
import com.web.root.mybatis.noMember.NoMemberMapper;
import com.web.root.mybatis.reservation.ReservationMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private NoMemberMapper nomapper;

	@Autowired
	private MemberMapper mapper;

	@Autowired
	private ReservationMapper remapper;
	
	@Override
	public String getAccessToken(String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);

			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로

			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송

			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");

			sb.append("&client_id=6a1d240c57ad788678529b6d6b53809f"); // 본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:8080/root/kakao/index"); // 본인이 설정한 주소

			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();

			// 결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);

			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}

	@Override
	public HashMap<String, Object> getUserInfo(String access_Token) {

		// 요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");

			// 요청에 필요한 Header에 포함될 내용
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();

			userInfo.put("nickname", nickname);
			userInfo.put("email", email);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return userInfo;
	}

	//비회원 로그인
	@Override
	public int register(NoMemberDTO nomember) {
		try {
			return nomapper.register(nomember);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	//회원 로그인
	@Override
	public int user_check(HttpServletRequest request) {
		MemberDTO dto = mapper.user_check(request.getParameter("id"));
		if (dto != null) {
			if (request.getParameter("pw").equals(dto.getPw())) {
				return 0;
			}
		}
		return 1;
	}

	@Override
	public int find_movie(HttpServletRequest request) {
		ReservationDTO redto = remapper.find_movie(request.getParameter("phone"));
		if (redto != null) {
			if(request.getParameter("name").equals(redto.getName())) {
				return 0;
			}
		}
		return 1;
		
	}
	
	//----------------------------------------------
	@Autowired
	MemberFileService mfs;

	@Override
	public String writesave(HttpServletRequest request) {
		
		MemberDTO dto = new MemberDTO();
		
		dto.setName(request.getParameter("name"));
		dto.setBirth(Integer.parseInt(request.getParameter("year")+request.getParameter("month")+request.getParameter("day")));
		dto.setPhone(Integer.parseInt(request.getParameter("tel1")+request.getParameter("tel2")+request.getParameter("tel3")));
		dto.setEmail(request.getParameter("email"));
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		
		int result = mapper.writesave(dto);
		String msg,url;
		if(result == 1) {
			msg = "회원 가입이 완료되었습니다.";
			url = "/member/login";
		} else {
			msg = "문제가 발생했습니다";
			url = "/member/writeform";
		}
		return mfs.getMessage(request, msg, url);
	}

	@Override
	public int checkId(HttpServletRequest request) {
		MemberDTO dto = new MemberDTO();		
		dto.setId(request.getParameter("id"));		
		int result = mapper.checkId(dto);
		return result;
	}

	@Override
	public MemberDTO viewinfo(String id, Model model) {
		model.addAttribute("data", mapper.viewinfo(id));
		return null;
	}

	@Override
	public String modify(HttpServletRequest request) {
		
		MemberDTO dto = new MemberDTO();
		dto.setName(request.getParameter("name"));
		dto.setBirth(Integer.parseInt(request.getParameter("birth")));
		dto.setPhone(Integer.parseInt(request.getParameter("phone")));
		dto.setEmail(request.getParameter("email"));
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		
		int result = mapper.modify(dto);
		String msg,url;
		if(result == 1) {
			msg = "회원 수정이 완료되었습니다.";
			url = "/member/viewinfo";
		} else {
			msg = "문제가 발생했습니다";
			url = "/member/modifyform";
		}
		return mfs.getMessage(request, msg, url);
	}

	@Override
	public String memberDelete(String id, HttpServletRequest request) {
		int result = mapper.delete(id);
		
		String msg, url;
		if(result == 1) {
			msg = "삭제 되었습니다";
			url = "/member/index";
		} else {
			msg = "삭제에 실패했습니다";
			url = "/member/viewinfo?id="+id;
		}
		return mfs.getMessage(request, msg, url);
	}
	
	

	


}
