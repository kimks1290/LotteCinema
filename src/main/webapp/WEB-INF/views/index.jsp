<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>롯데시네마</title>

<link rel="icon" href="image/favicon.ico" />
<link rel="stylesheet" href="${path }/resources/css/reset.css" />
<link rel="stylesheet" href="${path }/resources/css/index.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />

</head>

<body>
	<section class="section-main">
		<div class="main-slider-container">
			<div class="owl-item">
				<div onclick="videoOn1()" class="item">
					<a href="#none"> <img class="slider-img"
						src="${path }/resources/image/Two_1920774.jpg"
						data-video="https://caching2.lottecinema.co.kr/lotte_image/2022/Two/Two_1280720.mp4">
					</a>
				</div>
			</div>
			<section id="videoPop1" class="js-none">
				<div class="layer_wrap">
					<div class="layer-popup">
						<div class="layer_contents act">
							<video controls loop height="100%" width="100%"
								src="https://caching2.lottecinema.co.kr/lotte_image/2022/Two/Two_1280720.mp4"
								type="video/mp4"></video>
							<i onclick="videoOff1()" class="xi-close xi-2x video-close-btn"></i>
						</div>
					</div>
				</div>
			</section>

			<div class="owl-item js-none">
				<div onclick="videoOn2()" class="item">
					<a href="#none"> <img class="slider-img"
						src="${path }/resources/image/Thor_1920774.jpg"
						data-video="https://caching2.lottecinema.co.kr/lotte_image/2022/Thor/0617/Thor_1280720.mp4">
					</a>
				</div>
			</div>
			<section id="videoPop2" class="js-none">
				<div class="layer_wrap">
					<div class="layer-popup">
						<div class="layer_contents act">
							<video controls height="100%" width="100%"
								src="https://caching2.lottecinema.co.kr/lotte_image/2022/Thor/0617/Thor_1280720.mp4"
								type="video/mp4"></video>
							<i onclick="videoOff2()" class="xi-close xi-2x video-close-btn"></i>
						</div>
					</div>
				</div>
			</section>

			<div class="owl-item js-none">
				<div onclick="videoOn3()" class="item">
					<a href="#none"> <img class="slider-img"
						src="${path }/resources/image/Top_1920774.jpg"
						data-video="https://caching2.lottecinema.co.kr/lotte_image/2022/Ong/0610/Top_1280720.mp4">
					</a>
				</div>
			</div>
			<section id="videoPop3" class="js-none">
				<div class="layer_wrap">
					<div class="layer-popup">
						<div class="layer_contents act">
							<video controls height="100%" width="100%"
								src="https://caching2.lottecinema.co.kr/lotte_image/2022/Ong/0610/Top_1280720.mp4"
								type="video/mp4"></video>
							<i onclick="videoOff3()" class="xi-close xi-2x video-close-btn"></i>
						</div>
					</div>
				</div>
			</section>

			<header>
				<div class="inner">
					<div class="header-info-container">
						<div class="header-info-left">
							<div class="header-info-left-sns">
								<a href="https://www.facebook.com/LotteCinema.kr"
									target="_blank" class="header-info-left-facebook">페이스북</a>
							</div>
							<div class="header-info-left-sns">
								<a
									href="https://www.youtube.com/c/LOTTECINEMA%EB%A1%AF%EB%8D%B0%EC%8B%9C%EB%84%A4%EB%A7%88"
									target="_blank" class="header-info-left-youtube"> 유튜브</a>
							</div>
							<div class="header-info-left-sns">
								<a href="https://www.instagram.com/lottecinema_official/"
									target="_blank" class="header-info-left-instagram"> 인스타그램</a>
							</div>
						</div>
						<a href="/root/index"><img
							src="${path }/resources/image/logo_wht.png"
							class="header-info-center" /></a>
						<div class="header-info-right-container">
							<div class="header-info-right">
								<div class="header-info-right-font">
									<a>멤버십</a>
								</div>
								<div class="header-info-right-font">
									<a href="/root/board/question">고객센터</a>
								</div>
								<div class="header-info-right-font">
									<c:if
										test="${sessionId == null && userId == null && noName == null && loginUser == null}">
										<a href="/root/member/login">로그인</a>
									</c:if>
									<c:if
										test="${sessionId != null || userId != null || noName != null || loginUser != null}">
										<a href="/root/member/logout">로그아웃</a>
									</c:if>
								</div>
							</div>
						</div>
						<div class="header-nav-div-container">
							<c:if
								test="${sessionId == null && userId == null && noName == null && loginUser == null}">
								<a href="/root/member/writeform" class="header-nav-join">회원가입</a>
							</c:if>
							<c:if
								test="${sessionId != null || userId != null || noName != null || loginUser != null}">
								<a href="/root/member/mypage?id=${loginUser }"
									class="header-nav-join">마이</a>
							</c:if>
							<a href="#asg" class="header-nav-reserve">바로 예매</a> <i
								class="xi-bars xi-2x header-nav-hamberger"></i>
						</div>
					</div>
					<div class="header-nav-container">
						<ul class="header-nav-ul">
							<li class="header-nav-li-font"><a>예매</a>
								<div class="header-nav-pop-container js-none">
									<ul class="header-nav-pop-ul">
										<li><a>예매하기</a></li>
										<li><a>상영시간표</a></li>
										<li><a>할인안내</a></li>
									</ul>
								</div></li>
							<li class="header-nav-li">|</li>
							<li class="header-nav-li-font"><a href="/root/movie/recent">영화</a>
								<div class="header-nav-pop-container js-none">
									<ul class="header-nav-pop-ul">
										<li><a href="/root/movie/recent">홈</a></li>
										<li><a href="/root/movie/recent">현재상영작</a></li>
										<li><a href="/root/movie/future">상영예정작</a></li>
										<li>아르떼</li>
										<li>바스키아</li>
										<li>기획전/영화제</li>
									</ul>
								</div></li>
							<li class="header-nav-li">|</li>
							<li class="header-nav-li-font"><a>영화관</a>
								<div class="header-nav-pop-container js-none">
									<ul class="header-nav-pop-ul">
										<li>스페셜관</li>
										<li>서울</li>
										<li>경기/인천</li>
										<li>충청/대전</li>
										<li>전라/광주</li>
										<li>경북/대구</li>
										<li>경남/부산/울산</li>
										<li>강원</li>
										<li>제주</li>
									</ul>
								</div></li>
							<li class="header-nav-li">|</li>
							<li class="header-nav-li-font"><a href="/root/member/event">이벤트</a>
								<div class="header-nav-pop-container js-none">
									<ul class="header-nav-pop-ul">
										<li><a href="/root/member/event">홈</a></li>
										<li><a href="/root/member/event">영화</a></li>
										<li><a href="/root/member/event">시사회/무대인사</a></li>
										<li><a href="/root/member/event">HOT</a></li>
										<li><a href="/root/member/event">제휴할인</a></li>
										<li><a href="/root/member/event">우리동네영화관</a></li>
									</ul>
								</div></li>
							<li class="header-nav-li">|</li>
							<li class="header-nav-li-font"><a>스토어</a>
								<div class="header-nav-pop-container js-none">
									<ul class="header-nav-pop-ul">
										<li>베스트</li>
										<li>관람권</li>
										<li>스낵음료</li>
									</ul>
								</div></li>
						</ul>
					</div>
				</div>
			</header>
			<button class="main-slider-left-btn">
				<span>></span>
			</button>
			<button class="main-slider-right-btn">
				<span>></span>
			</button>
		</div>
		<div class="main-movie-container">
			<div class="inner">
				<div class="main-clock-container">
					<img src="${path }/resources/image/time2.png" /> <a href="asf#"
						class="main-clock-a"></a>
				</div>
				<div class="main-movie-poster-container">
					<div class="main-poster-object">
						<div class="main-poster-object-container">
							<div class="main-poster-hover-container">
								<img src="${path }/resources/image/14702_101_1.jpg"
									class="main-poster-object-img" /> <em
									class="main-poster-object-em">1</em>
								<div class="over_box js-none">
									<div class="main-poster-hover-btn">
										<a href="/root/admin/movie1">예매하기</a> <a>상세정보</a>
									</div>
								</div>
							</div>

						</div>
						<div class="main-poster-info-container">
							<div class="main-poster-title">탑건:매버릭</div>
							<div class="main-poster-info">
								예매율 55.3% <span class="col-line">|</span>
								<button class="main-poster-btn">
									<img src="${path }/resources/image/ic_star.png" />
								</button>
								<span class="main-poster-star">9.8</span> <span class="col-line">|</span>
								<i class="xi-heart-o"></i>
							</div>
						</div>
					</div>
					<div class="main-poster-object">
						<div class="main-poster-object-container">
							<div class="main-poster-hover-container">
								<img src="${path }/resources/image/18750_101_1.jpg"
									class="main-poster-object-img" /> <em
									class="main-poster-object-em">2</em>
								<div class="over_box js-none">
									<div class="main-poster-hover-btn">
										<a href="/root/admin/movie2">예매하기</a> <a>상세정보</a>
									</div>
								</div>
							</div>
						</div>
						<div class="main-poster-info-container">
							<div class="main-poster-title">마녀(魔女) Part2. The Other One</div>
							<div class="main-poster-info">
								예매율 16.2% <span class="col-line">|</span>
								<button class="main-poster-btn">
									<img src="${path }/resources/image/ic_star.png" />
								</button>
								<span class="main-poster-star">8.2</span> <span class="col-line">|</span>
								<i class="xi-heart-o"></i>
							</div>
						</div>
					</div>
					<div class="main-poster-object">
						<div class="main-poster-object-container">
							<div class="main-poster-hover-container">
								<img src="${path }/resources/image/18632_101_1.jpg"
									class="main-poster-object-img" /> <em
									class="main-poster-object-em">3</em>
								<div class="over_box js-none">
									<div class="main-poster-hover-btn">
										<a href="/root/admin/movie3">예매하기</a> <a>상세정보</a>
									</div>
								</div>
							</div>
						</div>
						<div class="main-poster-info-container">
							<div class="main-poster-title">범죄도시 2</div>
							<div class="main-poster-info">
								예매율 12.6% <span class="col-line">|</span>
								<button class="main-poster-btn">
									<img src="${path }/resources/image/ic_star.png" />
								</button>
								<span class="main-poster-star">9.7</span> <span class="col-line">|</span>
								<i class="xi-heart-o"></i>
							</div>
						</div>
					</div>
					<div class="main-poster-object">
						<div class="main-poster-object-container">
							<div class="main-poster-hover-container">
								<img src="${path }/resources/image/18651_101_1.jpg"
									class="main-poster-object-img" /> <em
									class="main-poster-object-em">4</em> <span
									class="ic_grade gr_15"></span>
								<div class="over_box js-none">
									<div class="main-poster-hover-btn">
										<a href="/root/admin/movie4">예매하기</a> <a>상세정보</a>
									</div>
								</div>
							</div>
						</div>
						<div class="main-poster-info-container">
							<div class="main-poster-title">헤어질 결심</div>
							<div class="main-poster-info">
								예매율 8.4% <span class="col-line">|</span> <span
									class="main-poster-dday">D-6</span> <span class="col-line">|</span>
								<i class="xi-heart-o"></i>
							</div>
						</div>
					</div>
					<div class="main-poster-object">
						<div class="main-poster-object-container">
							<div class="main-poster-hover-container">
								<img src="${path }/resources/image/Hyundaicard_184262.jpg"
									class="main-poster-object-img" /> <em
									class="main-poster-object-em">AD</em>
								<div class="over_box js-none">
									<div class="main-poster-hover-btn">
										<br>
										<a href="/root/member/event">상세정보</a>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="inner js-none">
		<!--통합 메뉴 코드 ( 햄버거 버튼 클릭 시 )-->
		<div class="hamberger-close-btn-container">
			<div class="hamberger-popup">
				<div class="hamberger-container">
					<div class="hamberger-flex-container">
						<div class="hamberger-menu-container">
							<table>
								<thead>
									<tr>
										<th>예매</th>
										<th>영화</th>
										<th class="hamberger-table-css">영화관</th>
										<th>스페셜관</th>
										<th>스토어</th>
										<th>멤버십</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>예매하기</td>
										<td><a href="/root/movie/recent">홈</a></td>
										<td class="hamberger-table-css">스페셜관</td>
										<td>홈</td>
										<td>베스트</td>
										<td>VIP</td>
									</tr>
									<tr>
										<td>상영시간표</td>
										<td><a href="/root/movie/recent">현재상영작</a></td>
										<td class="hamberger-table-css">서울</td>
										<td>샤롯데</td>
										<td>관람권</td>
										<td>짝궁클럽</td>
									</tr>
									<tr>
										<td>할인안내</td>
										<td><a href="/root/movie/future">상영예정작</a></td>
										<td class="hamberger-table-css">경기/인천</td>
										<td>수퍼플렉스 G</td>
										<td>스낵음료</td>
										<td>틴틴클럽</td>
									</tr>
									<tr>
										<td></td>
										<td>아르떼</td>
										<td class="hamberger-table-css">충청/대전</td>
										<td>수퍼 S</td>
										<td></td>
										<td>브라보클럽</td>
									</tr>
									<tr>
										<td></td>
										<td>바스키아</td>
										<td class="hamberger-table-css">전라/광주</td>
										<td>수퍼플렉스</td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>기획전/영화제</td>
										<td class="hamberger-table-css">경북/대구</td>
										<td>수퍼 4D</td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css">경남/부산/울산</td>
										<td>컬러리움</td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css">강원</td>
										<td>씨네살롱</td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css">제주</td>
										<td>씨네패밀리</td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"></td>
										<td>씨네커플</td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"></td>
										<td>씨네비즈</td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"></td>
										<td colspan="2">씨네컴포트(리클라이너)</td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
							<table>
								<thead>
									<tr>
										<th>마이</th>
										<th>고객센터</th>
										<th class="hamberger-table-css">회원 서비스</th>
										<th>이벤트</th>
										<th>할인안내</th>
										<th>회사소개</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a>결제내역</a></td>
										<td><a>FAQ</a></td>
										<td class="hamberger-table-css"><a>로그인</a></td>
										<td><a href="/root/member/event">영화</a></td>
										<td><a>신용카드</a></td>
										<td><a>채용안내</a></td>
									</tr>
									<tr>
										<td><a>쿠폰함</a></td>
										<td><a>공지사항</a></td>
										<td class="hamberger-table-css"><a>회원가입</a></td>
										<td><a href="/root/member/event">시사회/무대인사</a></td>
										<td><a>포인트</a></td>
										<td><a>광고/임대문의</a></td>
									</tr>
									<tr>
										<td><a>MY 이벤트</a></td>
										<td><a>1:1 문의</a></td>
										<td class="hamberger-table-css"><a>아이디/비밀번호찾기</a></td>
										<td><a href="/root/member/event">HOT</a></td>
										<td><a>통신사</a></td>
										<td><a>윤리경영</a></td>
									</tr>
									<tr>
										<td><a>MY 클럽</a></td>
										<td><a>단체관람/대관문의</a></td>
										<td class="hamberger-table-css"><a>회원약관</a></td>
										<td><a href="/root/member/event">제휴할인</a></td>
										<td><a>기타결제수단</a></td>
										<td><a>기업정보</a></td>
									</tr>
									<tr>
										<td><a>MY 무비로그</a></td>
										<td><a>분실물문의</a></td>
										<td class="hamberger-table-css"><a>개인정보처리방침</a></td>
										<td><a href="/root/member/event">우리동네영화관</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a>MY 정보 관리</a></td>
										<td></td>
										<td class="hamberger-table-css"><a>이메일무단수집거부</a></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td colspan="2" class="hamberger-table-css"><a>영상정보처리기기
												운영 관리방침</a></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"><a>L.POINT회원안내</a></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="hamberger-article">
							<div class="hamberger-article-flex">
								<c:if
									test="${sessionId == null && userId == null && noName == null && loginUser == null}">
									<button class="hamberger-article-btn">
										<a href="/root/member/login">로그인</a>
									</button>
									<div class="hamberger-article-join-container">
										<div class="hamberger-article-join-font">
											로그인 하시고<br />다양한 혜택을 확인하세요
										</div>
										<button class="hamberger-article-join-btn">
											<a>회원가입</a>
										</button>
									</div>
								</c:if>
								<c:if
									test="${sessionId != null || userId != null || noName != null || loginUser != null}">
									<div class="mypage_box">
										<h3 class="hidden">회원 등급 및 포인트</h3>
										<div class="my_info">
											<div class="grade_area">
												<span class="txt_rank_common m15">일반</span>
											</div>
											<p class="name">
												<c:if test="${nickname != null }">
													<strong>${nickname}님</strong>반가워요!
												</c:if>
												<c:if test="${sessionId != null }">
													<strong>${sessionId}님</strong>반가워요!
												</c:if>
												<c:if test="${noName != null }">
													<strong>${noName}님</strong>반가워요!
												</c:if>
												<c:if test="${loginUser != null }">
													<strong>${loginUser }님</strong>반가워요!
												</c:if>
											</p>
										</div>
										<c:if
											test="${sessionId != null || userId != null || loginUser != null}">
											<div class="my_point">
												<dl>
													<dt>
														<img src="${path }/resources/image/txt_lpoint_46.png"
															alt="">
													</dt>
													<dd>
														<a href="https://www.lpoint.com/app/mypage/LHMA200100.do"
															target="_blank" tabindex="0"> <strong>0P</strong>
														</a>
													</dd>
													<dt>쿠폰함</dt>
													<dd>
														<a href="#none" tabindex="0">0</a>
													</dd>
												</dl>
											</div>
										</c:if>
										<c:if test="${noName != null }">
											<div class="hamberger-article-join-container">
												<div class="hamberger-article-join-font">
													회원가입 하시고<br />다양한 혜택을 확인하세요
												</div>
												<button class="hamberger-article-join-btn">
													<a>회원가입</a>
												</button>
											</div>
										</c:if>
									</div>
									<c:if
										test="${sessionId != null || userId != null || loginUser != null}">
										<div class="my_theater" id="my_theater">
											<h3 class="tit">MY 영화관</h3>
											<button type="button" class="btn_setup">설정</button>
											<ul class="theater_box">
												<li class="add" id="my_theater_1"><a href="#none"
													tabindex="0">1st</a></li>
												<li class="add" id="my_theater_2"><a href="#none"
													tabindex="0">2st</a></li>
												<li class="add" id="my_theater_3"><a href="#none"
													tabindex="0">3st</a></li>
											</ul>
										</div>
									</c:if>
								</c:if>
								<img src="${path }/resources/image/Hyundaicard_297125_2.jpg"
									class="hamberger-article-join-img" />
							</div>
						</div>
					</div>
					<div class="hamberger-footer-container"></div>
				</div>
				<i class="xi-close xi-2x hamberger-close-btn js-none"></i>
			</div>
		</div>
	</section>
	<section class="section-sub">
		<div class="inner">
			<div class="special-container">
				<div class="special">
					<div class="special-font">스페셜관</div>
					<a href="faf" class="special-plus">더보기</a>
				</div>
				<div class="special-img-container">
					<img
						src="${path }/resources/image/e2a94c82115c46f7b326baee6e10266a.png" />
					<img
						src="${path }/resources/image/3ffca854b1844fdc8b54d8d9db45a03f.png" />
					<img
						src="${path }/resources/image/ff43cb260a2647dbb5f3c62b709103c4.png" />
					<img
						src="${path }/resources/image/c9078226c9ad4085b1b629bee2aba138.png" />
					<img
						src="${path }/resources/image/61fb906fbd9b4ff1b34d6e0bd78dc655.png" />
					<img
						src="${path }/resources/image/2a366799460a49359bf93250f50852cf.png" />
					<img
						src="${path }/resources/image/208a5ede362244fb8ab2e5cc3ab07529.png" />
					<img
						src="${path }/resources/image/5c23288d3a104f7fa4f7d3e725a2c6a8.png" />
				</div>
			</div>
			<div class="event-container">
				<div class="event">
					<div class="special-font">이벤트</div>
					<a href="faf" class="special-plus">더보기</a>
				</div>
				<div class="event-img-container">
					<div class="event-img-section">
						<img
							src="${path }/resources/image/919e3215f1434396ac967fd7adacc752.jpg" />
						<img
							src="${path }/resources/image/d4bb289411534fcb9b6412372aca9e1d.jpg" />
						<img
							src="${path }/resources/image/272ae4d218314164ad856311523d01cc.jpg" />
						<img
							src="${path }/resources/image/92398b601eba4e66ae409ca288ea58de.jpg" />
						<img
							src="${path }/resources/image/20100accb4cb410ea1c4836f226c88ff.jpg" />
					</div>
					<div class="event-img-article">
						<img src="${path }/resources/image/Hyundaicard_296511.jpg" />
					</div>
				</div>
			</div>
			<div class="preview-container">
				<div class="preview">
					<div class="special-font">시사회/무대인사</div>
					<a href="faf" class="special-plus">더보기</a>
				</div>
				<div class="preview-img-container">
					<a href="/root/member/event"><img
						src="${path }/resources/image/82d843521f114572b1018b2947fe019f.jpg" /></a>
				</div>
			</div>
			<div class="benefit-container">
				<div class="benefit">
					<img
						src="${path }/resources/image/3423e358b74d49d5b12867c7d9c6f6a8.png" />
					<img
						src="${path }/resources/image/16b056e5e6a04c609b94a5c21e786d3b.png" />
					<img
						src="${path }/resources/image/9fd4a77cd6a44a39aa35d07e5bb8a010.png" />
					<img
						src="${path }/resources/image/3633088df0644062b53cd88b34067895.png" />
					<img
						src="${path }/resources/image/9c4e2721ecdd488d86df6d27e3c2a000.png" />
				</div>
			</div>
			<div class="notice-container">
				<div class="notice">
					<div class="notice-font-container">
						<div>공지사항</div>
						<div>|</div>
						<div>롯데시네마 영구VIP 서비스 종료 안내</div>
					</div>
					<a href="faf" class="special-plus">더보기</a>
				</div>
			</div>
			<div class="bottom-banner-container">
				<img src="${path }/resources/image/Thor_980180.jpg" />
			</div>
		</div>
	</section>
	<section>
		<div class="bottom-ad-container">
			<img src="${path }/resources/image/Hyundaicard_980240.jpg" />
		</div>
	</section>
	<footer>
		<div class="inner">
			<div class="footer-info-container">
				<img src="${path }/resources/image/logo_footer.gif" />
				<ul class="footer-info-ul-container">
					<li>회원약관</li>
					<li>|</li>
					<li>개인정보처리방침</li>
					<li>|</li>
					<li>이메일무단수집거부</li>
					<li>|</li>
					<li>영상정보처리기기 운영 및 관리방침</li>
					<li>|</li>
					<li>L.POINT회원안내</li>
					<li>|</li>
					<li>배정기준</li>
					<li>|</li>
					<li>채용안내</li>
					<li>|</li>
					<li>광고/임대문의</li>
					<li>|</li>
					<li>윤리경영</li>
					<li>|</li>
					<li>기업정보</li>
				</ul>
				<ul class="footer-info-ul-container2">
					<li>서울특별시 송파구 올림픽로 300 롯데월드타워 27층</li>
					<li>|</li>
					<li>고객센터 1544-8855</li>
				</ul>
				<ul class="footer-info-ul-container2">
					<li>대표이사 임성규</li>
					<li>|</li>
					<li>사업자등록번호 313-87-00979</li>
					<li>|</li>
					<li>통신판매업신고번호 제1184호</li>
					<li>|</li>
					<li>개인정보 보호 최고 책임자 김무성</li>
				</ul>
				<div class="footer-info-copy">COPYRIGHT© LOTTE CINEMA ALL
					RIGHT RESERVED.</div>
			</div>
		</div>
		<div class="footer-award-container">
			<div class="inner">
				<div class="footer-award-img">
					<img src="${path }/resources/image/footer_award_NCSI5.png" /> <img
						src="${path }/resources/image/footer_award_kcsi.png" /> <img
						src="${path}/resources/image/footer_award_kssqi-1.png" /> <img
						src="${path}/resources/image/footer_award_brandcinema.png" /> <img
						src="${path}/resources/image/footer_award_greenstar.png" /> <img
						src="${path}/resources/image/footer_award_brandstar.png" /> <img
						src="${path}/resources/image/footer_award_familyship.png" />
				</div>
			</div>
		</div>
	</footer>
	<script src="${path }/resources/js/header2.js"></script>
	<script src="${path }/resources/js/mainSlider.js"></script>
	<script src="${path }/resources/js/clock.js"></script>
	<script src="${path }/resources/js/poster.js"></script>
</body>
</html>
