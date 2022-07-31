<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login</title>
<link rel="icon" href="image/favicon.ico" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${path }/resources/css/reset.css" />
<link rel="stylesheet" href="${path }/resources/css/style.css" />
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div id="headers"></div>
	<section>
		<div id="contents" class="contents_full">
			<div id="loginContents">
				<ul class="tab_wrap outer full" style="padding-left: 0;">
					<li class="memberList">
						<button type="button" class="tab_tit"
							style="left: 50%; width: 326.667px; margin-left: -490px"
							onclick="show_list1()">
							<span id="memSpan" class="listOn">회원</span>
						</button>
						<div id="tab_1" class="tab_con">
							<h3 class="hidden">회원</h3>
							<div class="member_login_wrap">
								<div class="contents_inner">
									<div class="login_box">
										<form action="user_check" method="post" name="check1">
											<p>L.POINT, 롯데시네마 ID로 별도의 회원가입 없이 이용 가능 합니다.</p>
											<div class="login_area">
												<input type="text" id="userId" name="id" maxlength="50"
													placeholder="아이디 또는 이메일을 입력해 주세요." title="입력태그" /> <input
													type="password" id="userPassword" name="pw" maxlength="15"
													placeholder="비밀번호를 입력해 주세요." title="입력태그" /> <input
													type="hidden" name="hidLoginType" id="hidLoginType" />
												<button type="button" class="btn_login">로그인</button>
											</div>
											<div class="login_bot_wrap">
												<div class="login_check">
													<input type="checkbox" name="loginCheck" id="checkSavedID" />
													<label> 아이디 저장 </label>
												</div>
												<div class="login_menu">
													<a>회원가입</a> <a>아이디 찾기</a> <a>비밀번호 찾기</a>
												</div>
											</div>
										</form>
										<div class="login_ad">
											<a
												href="https://nvapi.feeldmc.com/ad/p/in/v1_0/clk?slotid=stw_lottelotte_46&adgroupid=adg_lottecinema_20200103_77&adid=adi_lottecinema_20200103_49">
												<img src="${path }/resources/image/Minwise_18126.png" />
											</a>
										</div>
									</div>
									<div class="ad_box">
										<a href=""><img
											src="${path }/resources/image/Samsungfire_450220.png" /></a>
									</div>
								</div>
							</div>
						</div>
					</li>
					<!-- 비회원 -->
					<li>
						<button type="button" class="tab_tit"
							style="left: 50%; width: 326.667px; margin-left: -163.333px"
							onclick="show_list2()">
							<span id="noMemSpan">비회원</span>
						</button>
						<div id="tab_2" class="tab_con none ty5">
							<h3 class="hidden">비회원</h3>
							<div class="member_login_wrap tab-nomem">
								<div class="contents_inner">
									<ul class="tab_wrap outer lft">
										<li>
											<button onclick="show_noMemLogin()" type="button"
												class="tab_tit nomemLog" style="left: 0px; width: 97px">
												<span id="noMember_1" class="listOn">비회원 로그인</span>
											</button>
											<div id="noMem1" class="tab_con">
												<h3 class="hidden">비회원</h3>
												<div class="contents_inner">
													<div class="login_input_box">
														<div class="login_form_wrap">
															<form action="/join" method="post">
																<!-- 이름 -->
																<dl class="join_input_box">
																	<dt class="title">
																		<label for="userName" class="txt_star">이름</label>
																	</dt>
																	<dd class="inp_box">
																		<input type="text" name="name" id="userName"
																			placeholder="이름을 입력해 주세요" title="입력태그" />
																	</dd>
																</dl>
																<!-- 전화번호 -->
																<dl class="join_input_box">
																	<dt class="title">
																		<label for="userPhone" class="txt_star">휴대폰 번호</label>
																	</dt>
																	<dd class="inp_box">
																		<input type="text" name="tel" id="userPhone"
																			placeholder="휴대폰 번호(- 생략)를 입력해 주세요." title="입력태그" />
																	</dd>
																</dl>
																<!-- 생년월일 -->
																<dl class="join_input_box">
																	<dt class="title">
																		<label for="birth" class="txt_star">생년월일</label>
																	</dt>
																	<dd class="inp_box">
																		<select title="출생년도" name="birthyy" id="birthyy">
																			<option value="">출생년도</option>
																			<option value="2022">2022</option>
																			<option value="2021">2021</option>
																			<option value="2020">2020</option>
																			<option value="2019">2019</option>
																			<option value="2018">2018</option>
																			<option value="2017">2017</option>
																			<option value="2016">2016</option>
																			<option value="2015">2015</option>
																			<option value="2014">2014</option>
																			<option value="2013">2013</option>
																			<option value="2012">2012</option>
																			<option value="2011">2011</option>
																			<option value="2010">2010</option>
																			<option value="2009">2009</option>
																			<option value="2008">2008</option>
																			<option value="2007">2007</option>
																			<option value="2006">2006</option>
																			<option value="2005">2005</option>
																			<option value="2004">2004</option>
																			<option value="2003">2003</option>
																			<option value="2002">2002</option>
																			<option value="2001">2001</option>
																			<option value="2000">2000</option>
																			<option value="1999">1999</option>
																			<option value="1998">1998</option>
																			<option value="1997">1997</option>
																			<option value="1996">1996</option>
																			<option value="1995">1995</option>
																			<option value="1994">1994</option>
																			<option value="1993">1993</option>
																			<option value="1992">1992</option>
																			<option value="1991">1991</option>
																			<option value="1990">1990</option>
																			<option value="1989">1989</option>
																			<option value="1988">1988</option>
																			<option value="1987">1987</option>
																			<option value="1986">1986</option>
																			<option value="1985">1985</option>
																			<option value="1984">1984</option>
																			<option value="1983">1983</option>
																			<option value="1982">1982</option>
																			<option value="1981">1981</option>
																			<option value="1980">1980</option>
																			<option value="1979">1979</option>
																			<option value="1978">1978</option>
																			<option value="1977">1977</option>
																			<option value="1976">1976</option>
																			<option value="1975">1975</option>
																			<option value="1974">1974</option>
																			<option value="1973">1973</option>
																			<option value="1972">1972</option>
																			<option value="1971">1971</option>
																			<option value="1970">1970</option>
																			<option value="1969">1969</option>
																			<option value="1968">1968</option>
																			<option value="1967">1967</option>
																			<option value="1966">1966</option>
																		</select> <select title="월" name="birthmm" id="birthmm">
																			<option value="">월</option>
																			<option value="01">1</option>
																			<option value="02">2</option>
																			<option value="03">3</option>
																			<option value="04">4</option>
																			<option value="05">5</option>
																			<option value="06">6</option>
																			<option value="07">7</option>
																			<option value="08">8</option>
																			<option value="09">9</option>
																			<option value="10">10</option>
																			<option value="11">11</option>
																			<option value="12">12</option>
																		</select> <select title="일" name="birthdd" id="birthdd">
																			<option value="">일</option>
																			<option value="01">1</option>
																			<option value="02">2</option>
																			<option value="03">3</option>
																			<option value="04">4</option>
																			<option value="05">5</option>
																			<option value="06">6</option>
																			<option value="07">7</option>
																			<option value="08">8</option>
																			<option value="09">9</option>
																			<option value="10">10</option>
																			<option value="11">11</option>
																			<option value="12">12</option>
																			<option value="13">13</option>
																			<option value="14">14</option>
																			<option value="15">15</option>
																			<option value="16">16</option>
																			<option value="17">17</option>
																			<option value="18">18</option>
																			<option value="19">19</option>
																			<option value="20">20</option>
																			<option value="21">21</option>
																			<option value="22">22</option>
																			<option value="23">23</option>
																			<option value="24">24</option>
																			<option value="25">25</option>
																			<option value="26">26</option>
																			<option value="27">27</option>
																			<option value="28">28</option>
																			<option value="29">29</option>
																			<option value="30">30</option>
																			<option value="31">31</option>
																		</select>
																	</dd>
																</dl>
																<!-- 예매  비밀번호 -->
																<dl class="join_input_box">
																	<dt class="title">
																		<label for="noMemberPwd" class="txt_star">예매
																			비밀번호</label>
																	</dt>
																	<dd class="inp_box">
																		<input type="password" maxlength="4"
																			name="noMemberPwd" id="noMemberPwd"
																			placeholder="예매 비밀번호 (4자리)를 입력해 주세요." title="입력태그" />
																	</dd>
																</dl>
																<!-- 예매 비밀번호 확인 -->
																<dl class="join_input_box">
																	<dt class="title">
																		<label for="noMemberPwd2" class="txt_star">예매
																			비밀번호 확인</label>
																	</dt>
																	<dd class="inp_box">
																		<input type="password" maxlength="4"
																			name="noMemberPwd2" id="noMemberPwd2"
																			placeholder="예매 비밀번호 (4자리)를 재입력해 주세요." title="입력태그" />
																	</dd>
																</dl>
															</form>
														</div>
														<ul class="list_txt">
															<li>비회원 로그인 시 예매 및 예매확인/취소 메뉴만 이용 가능하며 관람권, 할인권을 포함한
																기타 결제, 할인수단은 정회원 로그인 시 사용 가능 합니다.</li>
														</ul>
													</div>
													<div class="ad_box">
														<a href=""><img
															src="${path }/resources/image/Aton_450220.png" /></a>
													</div>
													<div class="txtarea_box">
														<div class="textarea">
															<a class="focus_textarea" href="">개인정보의 수집목적 및 항목</a> <br />
															① 개인정보 수집 목적: 비회원 예매확인 및 이용자 식별 <br /> ② 수집항목: 이름,
															휴대폰번호, 생년월일, 고유번호 <br /> <br /> <span
																style="color: #ff7787"> 개인정보의 보유 및 이용기간 <br />
																개인정보는 영화 예매 완료 후 동의일로부터 70일까지 위 이용 목적으로 이용 및 보유 합니다. (단,
																생년월일은 이용자 식별 목적으로 이용되며 별도 보관되지 않습니다.) <br /> 다만, 상법 등
																관련법령의 규정에 의하여 거래 관련 관리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가
																있을 경우 아래와 같이 보유합니다. <br /> 대금결제 및 재화 등의 공급에 관한 기록 : 5년
															</span> <br /> <br /> ※ 비회원 예매서비스 제공을 위한 최소한의 개인정보이며 거부할 수
															있습니다. 다만, 수집에 동의하지 않을 경우 서비스 이용이 제한됩니다.
														</div>
														<div class="agreement_check_box">
															<input type="radio" name="agreeCheck" id="privacyOk01"
																checked /> <label for="privacyOk01">동의</label> <input
																type="radio" name="agreeCheck" id="privacyOk02" /> <label
																for="privacyOk02">동의하지않음</label>
														</div>
													</div>
												</div>
												<div class="btn_btm_wrap">
													<a href="#none" class="btn_signup" title="회원가입 페이지 이동">회원가입</a>
													<a href="#none" class="btn_login_nomem"
														onclick="show_noMemLog()" title="비회원 로그인 페이지 이동">비회원
														로그인</a>
												</div>
											</div>
										</li>
										
										<!-- ////////////////////////////////////비회원 예매확인 -->
										<li>
											<button onclick="show_noMemCheck()" type="button"
												class="tab_tit nomemLog" style="left: 97px; width: 119px">
												<span id="noMember_2">비회원 예매확인</span>
											</button> <!-- div시작 -->
											<div id="noMem2" class="tab_con none">
 											<form action="find_movie" method="post">
												<h3 class="hidden">비회원</h3>
												<div class="contents_inner">
													<div class="login_input_box">
														<div class="login_form_wrap">
														
															<!-- 이름 -->
															<dl class="join_input_box">
																<dt class="title noMem">
																	<label for="userName" class="txt_star">이름</label>
																</dt>
																<dd class="inp_box">
																	<input type="text" name="name" id="userName"
																		placeholder="이름을 입력해 주세요" title="입력태그" />
																</dd>
															</dl>
															<!-- 전화번호 -->
															<dl class="join_input_box">
																<dt class="title noMem">
																	<label for="phone" class="txt_star">휴대폰 번호</label>
																</dt>
																<dd class="inp_box">
																	<input type="text" name="phone" id="userPhone"
																		placeholder="휴대폰 번호(- 생략)를 입력해 주세요." title="입력태그" />
																</dd>
															</dl>
															<!-- 예매  비밀번호 -->
															<dl class="join_input_box">
																<dt class="title noMem">
																	<label for="noMemberPwd" class="txt_star">예매
																		비밀번호</label>
																</dt>
																<dd class="inp_box">
																	<input type="password" name="noMemberPwd"
																		id="noMemberPwd" placeholder="예매 비밀번호 (4자리)를 입력해 주세요."
																		title="입력태그" />
																</dd>
															</dl>
														</div>
													</div>
													<div class="ad_box">
														<a href=""><img
															src="${path }/resources/image/Aton_450220.png" /></a>
													</div>
													<div class="txtarea_box">
														<div class="textarea">
															<a class="focus_textarea" href="">개인정보의 수집목적 및 항목</a> <br />
															① 개인정보 수집 목적: 비회원 예매확인 및 이용자 식별 <br /> ② 수집항목: 이름,
															휴대폰번호, 생년월일, 고유번호 <br /> <br /> <span
																style="color: #ff7787"> 개인정보의 보유 및 이용기간 <br />
																개인정보는 영화 예매 완료 후 동의일로부터 70일까지 위 이용 목적으로 이용 및 보유 합니다. (단,
																생년월일은 이용자 식별 목적으로 이용되며 별도 보관되지 않습니다.) <br /> 다만, 상법 등
																관련법령의 규정에 의하여 거래 관련 관리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가
																있을 경우 아래와 같이 보유합니다. <br /> 대금결제 및 재화 등의 공급에 관한 기록 : 5년
															</span> <br /> <br /> ※ 비회원 예매서비스 제공을 위한 최소한의 개인정보이며 거부할 수
															있습니다. 다만, 수집에 동의하지 않을 경우 서비스 이용이 제한됩니다.
														</div>
														<div class="agreement_check_box">
															<input type="radio" name="agreeCheck2" id="privacyOk03"
																checked /> <label for="privacyOk01">동의</label> <input
																type="radio" name="agreeCheck2" id="privacyOk04" /> <label
																for="privacyOk02">동의하지않음</label>
														</div>
													</div>
												</div>
												<div class="btn_btm_wrap">
													<a href="#none" class="btn_signup" title="회원가입 페이지 이동">회원가입</a>
													<button type="submit" class="btn_login_nomem" onclick="openReserve()"
														title="비회원 로그인 페이지 이동">비회원 예매확인</button>
												</div>
											 	</form> 
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</li>
					<!-- 소셜 로그인 -->
					<li>
						<button type="button" class="tab_tit"
							style="left: 50%; width: 326.667px; margin-left: 163.333px"
							onclick="show_list3()">
							<span id="socialSpan">소셜 로그인</span>
						</button>
						<div id="tab_3" class="tab_con none">
							<h3 class="hidden">소셜 로그인</h3>
							<div class="member_login_wrap">
								<div class="contents_inner">
									<div class="login_box social">
										<a href="${url}" class="btn_naver_social" title="네이버 계정으로 로그인">네이버계정으로
											로그인</a> <a
											href="https://kauth.kakao.com/oauth/authorize?client_id=6a1d240c57ad788678529b6d6b53809f&redirect_uri=http://localhost:8080/root/kakao/index&response_type=code"
											class="btn_kakao_social" title="카카오 계정으로 로그인">카카오 계정으로
											로그인</a>
										<div class="login_bot_wrap">
											<div class="login_menu socialLog">
												<a href="#none">회원가입</a> <a href="#none">아이디 찾기</a> <a
													href="#none">비밀번호 찾기</a>
											</div>
										</div>
									</div>
									<div class="ad_box">
										<a href=""><img
											src="${path }/resources/image/Aton_450220.png" /></a>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<!-- 비회원 로그인 팝업창 -->
			<div class="nomemLogcheck js-none">
				<div class="nomemPop">
					<div id="layerLoginNonmem" class="layer_wrap layer_login_nomem">
						<strong class="hidden txtTabIndex">레이어 팝업 시작</strong>
						<form action="register" method="post">
							<div class="layer_contents">
								<p class="txt_para ty2">
									입력하신 정보로<br />비회원 로그인을 진행 합니다.
								</p>

								<div class="inp_lab_wrap">
									<label class="bx_inp_lab"> <span class="tit">이름
											: </span> <input type="text" id="noName" name="noName" class="ty3" />
									</label> <label class="bx_inp_lab"> <span class="tit">휴대폰
											번호 : </span> <input type="text" id="noTel" name="noTel" class="ty3" />
									</label> <label class="bx_inp_lab"> <span class="tit">고유번호
											: </span> <input type="text" id="noLogTel" name="noLogTel"
										class="ty3" />
									</label>
								</div>

								<p class="txt_bul">본화면을 캡쳐하시면 비회원 예매 내역 조회 시, 유용하게 사용하실 수
									있습니다.</p>
							</div>
							<div class="layer_footer">
								<ul>
									<li>
										<button type="button" class="btnCloseLayer"
											onclick="close_noMemLog()">취소</button>
									</li>
									<li>
										<button type="submit">확인</button>
									</li>
								</ul>
							</div>
						</form>
						<strong class="hidden txtTabIndex">레이어 팝업 끝</strong>
					</div>
				</div>
			</div>
			<!-- 비회원 로그인 팝업창 종료 -->
			<!-- 비회원 로그인 팝업창 -->
			<div class="nomemLogcheck js-none">
				<div class="nomemPop">
					<div id="layerLoginNonmem" class="layer_wrap layer_login_nomem">
						<strong class="hidden txtTabIndex">레이어 팝업 시작</strong>
						<div class="layer_contents">
							<p class="txt_para ty2">
								입력하신 정보로<br />비회원 로그인을 진행 합니다.
							</p>
							<div class="inp_lab_wrap">
								<label class="bx_inp_lab"> <span class="tit">이름 :
								</span> <input type="text" id="name" name="name" class="ty3" value="" />
								</label> <label class="bx_inp_lab"> <span class="tit">휴대폰
										번호 : </span> <input type="text" id="phone" name="phone" class="ty3" />
								</label> <label class="bx_inp_lab"> <span class="tit">고유번호
										: </span> <input type="text" id="phoneCode" name="phoneCode"
									class="ty3" />
								</label>
							</div>
							<p class="txt_bul">본화면을 캡쳐하시면 비회원 예매 내역 조회 시, 유용하게 사용하실 수
								있습니다.</p>
						</div>
						<div class="layer_footer">
							<ul>
								<li>
									<button type="button" class="btnCloseLayer"
										onclick="close_noMemLog()">취소</button>
								</li>
								<li>
									<button type="button">확인</button>
								</li>
							</ul>
						</div>
						<strong class="hidden txtTabIndex">레이어 팝업 끝</strong>
					</div>
				</div>
			</div>
			<!-- 비회원 로그인 팝업창 종료 -->
			<!-- 비회원 예매 내역 확인 -->
			<div class="nomemLogcheck noMemReservePop js-none">
				<div class="nomemPop">
					<div id="layerLoginNonmem" class="layer_wrap layer_login_nomem">
						<strong class="hidden txtTabIndex">레이어 팝업 시작</strong>
						<div class="layer_contents">
							<p class="txt_para ty2">예매 내역</p>
							<div class="inp_lab_wrap">
								<label class="bx_inp_lab"> 
								<span class="tit">영화관 : </span> 
								<input type="text" id="theater" name="theater" class="ty3" value="${remember.theater }" readonly />
								</label> 
								<label class="bx_inp_lab"> 
								<span class="tit">영화 이름 : </span>
								<input type="text" id="movie" name="movie" class="ty3" />
								</label> 
								<label class="bx_inp_lab"> 
								<span class="tit">영화 시간 : </span> 
								<input type="text" id="time" name="time" class="ty3" />
								</label> 
								<label class="bx_inp_lab"> <span class="tit">자리 : </span> 
								<input type="text" id="seat" name="seat" class="ty3" />
								</label>
							</div>
							<p class="txt_bul">본화면을 캡쳐하시면 비회원 예매 내역 조회 시, 유용하게 사용하실 수
								있습니다.</p>
						</div>
						<div class="layer_footer">
							<ul>
								<li>
									<button type="button" class="btnCloseLayer"
										onclick="closeReserve()">취소</button>
								</li>
								<li>
									<button type="button" onclick="closeReserve()">확인</button>
								</li>
							</ul>
						</div>
						<strong class="hidden txtTabIndex">레이어 팝업 끝</strong>
					</div>
				</div>
			</div>
			<!-- 비회원 예매 내역 확인 종료 -->
		</div>
	</section>
	<c:import url="../default/footer.jsp" />
	<script src="${path }/resources/js/login.js"></script>
</body>
</html>
