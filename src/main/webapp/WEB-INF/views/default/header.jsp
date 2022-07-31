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
<title>lotte cinema</title>
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />
<link rel="icon" href="image/favicon.ico" />
<link rel="stylesheet" href="${path }/resources/css/reset.css" />
<link rel="stylesheet" href="${path }/resources/css/style.css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	
</script>
</head>
<body>
	<section class="section-main">
		<header>
			<div class="inner">
				<div class="header-info-container">
					<div class="header-info-left">
						<div class="header-info-left-sns">
							<a href="https://www.facebook.com/LotteCinema.kr" target="_blank"
								class="header-info-left-facebook">페이스북</a>
						</div>
						<div class="header-info-left-sns">
							<a
								href="https://www.youtube.com/c/LOTTECINEMA%EB%A1%AF%EB%8D%B0%EC%8B%9C%EB%84%A4%EB%A7%88"
								target="_blank" class="header-info-left-youtube">
								유튜브</a>
						</div>
						<div class="header-info-left-sns">
							<a href="https://www.instagram.com/lottecinema_official/"
								target="_blank" class="header-info-left-instagram">
								인스타그램</a>
						</div>
					</div>
					<a href="/root/index"><img
						src="${path }/resources/image/logo_red.png"
						class="header-info-center" /></a>
					<div class="header-info-right-container">
						<div class="header-info-right">
							<div class="header-info-right-font">
								<a>멤버십</a>
							</div>
							<div class="header-info-right-font" style="margin-right: 12px;">
								<a href="/root/board/question">고객센터</a>
							</div>
							<c:if test="${sessionId == null }">
								<a href="/root/member/login">로그인</a>
							</c:if>
							<c:if test="${sessionId != null }">
								<a href="/root/member/login">로그아웃</a>
							</c:if>
						</div>
					</div>
					<div class="header-nav-div-container">
						<c:if test="${sessionId == null }">
							<a href="#asf" class="header-nav-join">회원가입</a>
						</c:if>
						<c:if test="${sessionId != null }">
							<a href="#asf" class="header-nav-join">마이</a>								
						</c:if> 
						<a href="#asg"class="header-nav-reserve">바로 예매</a>
						<i class="xi-bars xi-5x header-nav-hamberger"></i>
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
						<li class="header-nav-li-font"><a>영화</a>
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
	</section>
	<section class="inner js-none">
		<!--햄버거 버튼 클릭 시-->
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
										<td><a>예매하기</a></td>
										<td><a href="/root/movie/recent">홈</a></td>
										<td class="hamberger-table-css"><a>스페셜관</a></td>
										<td><a>홈</a></td>
										<td><a>베스트</a></td>
										<td><a>VIP</a></td>
									</tr>
									<tr>
										<td><a>상영시간표</a></td>
										<td><a href="/root/movie/recent">현재상영작</a></td>
										<td class="hamberger-table-css"><a>서울</a></td>
										<td><a>샤롯데</a></td>
										<td><a>관람권</a></td>
										<td><a>짝궁클럽</a></td>
									</tr>
									<tr>
										<td><a>할인안내</a></td>
										<td><a href="/root/movie/future">상영예정작</a></td>
										<td class="hamberger-table-css"><a>경기/인천</a></td>
										<td><a>수퍼플렉스 G</a></td>
										<td><a>스낵음료</a></td>
										<td><a>틴틴클럽</a></td>
									</tr>
									<tr>
										<td></td>
										<td><a>아르떼</a></td>
										<td class="hamberger-table-css"><a>충청/대전</a></td>
										<td><a>수퍼 S</a></td>
										<td></td>
										<td><a>브라보클럽</a></td>
									</tr>
									<tr>
										<td></td>
										<td><a>바스키아</a></td>
										<td class="hamberger-table-css"><a>전라/광주</a></td>
										<td><a>수퍼플렉스</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td><a>기획전/영화제</a></td>
										<td class="hamberger-table-css"><a>경북/대구</a></td>
										<td><a>수퍼 4D</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"><a>경남/부산/울산</a></td>
										<td><a>컬러리움</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"><a>강원</a></td>
										<td><a>씨네살롱</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"><a>제주</a></td>
										<td><a>씨네패밀리</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"></td>
										<td><a>씨네커플</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"></td>
										<td><a>씨네비즈</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="hamberger-table-css"></td>
										<td colspan="2"><a>씨네컴포트(리클라이너)</a></td>
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
										<td class="hamberger-table-css"><a href="/root/member/login">로그인</a></td>
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
								<c:if test="${sessionId == null }">
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
								<c:if test="${sessionId != null }">
									<div class="mypage_box">
										<h3 class="hidden">회원 등급 및 포인트</h3>
										<div class="my_info">
											<div class="grade_area">
												<span class="txt_rank_common m15">일반</span>
											</div>
											<p class="name">
												<strong>${sessionId }님</strong>반가워요!
											</p>
										</div>
										<div class="my_point">
											<dl>
												<dt>
													<img src="${path }/resources/image/txt_lpoint_46.png" alt="">
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
									</div>
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
								<a><img
									src="${path }/resources/image/Hyundaicard_297125_2.jpg"
									class="hamberger-article-join-img" /></a>
							</div>
						</div>
					</div>
					<a><div class="hamberger-footer-container"></div></a>
				</div>
				<i class="xi-close-thin xi-2x hamberger-close-btn js-none"
					style="right: 18%;"></i>
			</div>
		</div>
	</section>
	<script src="${path }/resources/js/header2.js"></script>
</body>
</html>
