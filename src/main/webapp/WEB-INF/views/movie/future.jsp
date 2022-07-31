<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상영 예정작</title>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
* {	font-family: "Noto Sans KR", sans-serif;}
.header {
	font-size : 25pt;
	text-align : center;
}
.recent {
	text-align: center;
}
ul {
	list-style : none;
}
.movie_list li {
    float: left;
    position: relative;
    width: 184px;
    margin: 0 7.5px;
    text-align: center;
}
.movie_list li .top_info .poster_info img {
    width: 100%;
}
img {
    border: none;
    vertical-align: top;
}
.movie_list li .top_info .poster_info .num_info {
    display: block;
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    height: 27px;
    padding-left: 10px;
    color: #fff;
    font-weight: bold;
    font-size: 26px;
    font-style: italic;
    font-family: 'Roboto', "Noto Sans KR";
    text-align: left;
    background: linear-gradient(to bottom, rgba(0,0,0,0) 0%,rgba(0,0,0,0.15) 40%,rgba(0,0,0,0.5) 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000', endColorstr='#80000000',GradientType=0 );
}
.movie_list li .top_info .poster_info {
    display: block;
    height: 262px;
}
.movie_list li .btm_info {
    display: block;
    margin-top: 14px;
}
.movie_list li .btm_info .tit_info {
    display: block;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    margin-bottom: 6px;
    font-size: 13px;
}
.movie_list li .top_info {
    overflow: hidden;
    position: relative;
    height: 262px;
    border-radius: 4px;
}
.content {
    width: 980px;
    margin: 0 auto;
    padding: 50px 0 0 0;
}
.movie_list li .btm_info .sub_info {
    display: block;
    margin-bottom: 10px;
    font-size: 15px;
}
a, a:visited, a:link {
	text-decoration : none;
	color : black;
}
a:hover {
	color : crimson;
}
.swiper {
	width : 1400px;
	height : 350px;
}

.swiper-slide  img{
	display : block;
	width : 100%;
	height : 100%;
	object-fit : cover;
}
.list_up {
	width: 980px;
    margin: 0 auto;
}
ul {
	list-style : none;
}
.list_up li {
	display : list-item;
	float : left;
	width : 100px;
	margin-right : 10px;
}
.recent a {
	color : silver
}
.recent {
	border-bottom : 2px solid silver;
}
.future a {
	color : black;
}
.future {
	border-bottom : 2px solid black;
}
.swiper {
	margin-top: 30px;
}
</style>
 <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="https://caching2.lottecinema.co.kr/lotte_image/2022/Witch/0603/Witch_1920420.jpg" title="마녀 2"></div>
        <div class="swiper-slide"><img src="https://caching2.lottecinema.co.kr/lotte_image/2022/Buz/0531/Buz_1920420.jpg" title="버즈 라이트이어"></div>
        <div class="swiper-slide"><img src="https://caching2.lottecinema.co.kr/lotte_image/2022/Ong/Top_1920420.jpg" title="탑건 매버릭"></div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
	
	<div class="header">
		<p>상영 예정작</p>
	</div>
	
	<div class="list_up">
		<ul>
			<li class="recent"><a href="${contextPath }/movie/recent">현재 상영작</a></li>
			<li class="future"><a href="${contextPath }/movie/future">상영 예정작</a></li>
		</ul>
	</div>
	
	<div class="content">
		<div class="movie_box">
			<ul class="movie_list">
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://movie-phinf.pstatic.net/20220418_47/16502681850230L5Wb_JPEG/movie_image.jpg?type=m886_590_2" alt="헤어질 결심">
							<em class="num_info"></em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">헤어질 결심</strong>
						<span class="sub_info"><a href="${contextPath }/movie/info?movieNo=${8}">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18750_103_1.jpg" alt="마녀 2">
							<em class="num_info"></em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">마녀 2</strong>
						<span class="sub_info"><a href="${contextPath }/movie/info?movieNo=${9}">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://movie-phinf.pstatic.net/20220503_102/1651545839890v5DPD_JPEG/movie_image.jpg?type=m886_590_2" alt="외계+인 1부">
							<em class="num_info"></em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">외계+인 1부</strong>
						<span class="sub_info"><a href="${contextPath }/movie/info?movieNo=${10}">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://movie-phinf.pstatic.net/20200702_205/1593675054819erC5p_JPEG/movie_image.jpg?type=m886_590_2" alt="비상선언">
							<em class="num_info"></em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">비상선언</strong>
						<span class="sub_info"><a href="${contextPath }/movie/info?movieNo=${11}">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://movie-phinf.pstatic.net/20220607_258/1654584633753csY4l_JPEG/movie_image.jpg?type=m886_590_2" alt="탑건 : 매버릭">
							<em class="num_info"></em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">탑건 : 매버릭</strong>
						<span class="sub_info"><a href="${contextPath }/movie/info?movieNo=${12}">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://movie-phinf.pstatic.net/20220516_176/1652689679818YS5A5_JPEG/movie_image.jpg?type=m886_590_2" alt="토르 : 러브 앤 썬더">
							<em class="num_info"></em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">토르 : 러브 앤 썬더</strong>
						<span class="sub_info"><a href="${contextPath }/movie/info?movieNo=${13}">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://movie-phinf.pstatic.net/20220602_241/1654132974469QMmOE_JPEG/movie_image.jpg?type=m886_590_2" alt="버즈 라이트이어">
							<em class="num_info"></em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">버즈 라이트이어</strong>
						<span class="sub_info"><a href="${contextPath }/movie/info?movieNo=${14}">상세정보</a></span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<c:import url="../default/footer.jsp" />
	<!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
    	loop:true,
    	spaceBetween:30,
    	centeredSlides : true,
    	autoplay: {
    		display:3000,
    		disableOnInteraction : false,
    	},
    	pagination: {
    		el: ".swiper-pagination",
    		clickable:true,
    	},
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>
</body>
</html>