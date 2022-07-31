<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 상영작</title>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
* {	font-family: 'NanumBarunPen';}
.header {
	font-size : 25pt;
	text-align : center;
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
</style>
 <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
</head>
<body>
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
		<p>현재 상영작</p>
	</div>
	
	<div class="content">
		<div class="movie_box">
			<ul class="movie_list">
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18639_103_1.jpg" alt="브로커">
							<em class="num_info">1</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top : -33px;">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">브로커 <br></strong>
						<span class="sub_info"><a href="">예매하기</a> &nbsp; <a href="${contextPath }/board/info?title=${dto.title}">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18632_103_1.jpg" alt="범죄도시 2">
							<em class="num_info">2</em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">범죄도시 2</strong>
						<span class="sub_info"><a href="">예매하기</a> &nbsp; <a href="">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18508_103_1.jpg" alt="쥬라기 월드: 도미니언">
							<em class="num_info">3</em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">쥬라기 월드 : 도미니언</strong>
						<span class="sub_info"><a href="">예매하기</a> &nbsp; <a href="">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18538_103_1.jpg" alt="닥터 스트레인지: 대혼돈의 멀티버스">
							<em class="num_info">4</em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">닥터 스트레인지 : 대혼돈의 멀티버스</strong>
						<span class="sub_info"><a href="">예매하기</a> &nbsp; <a href="">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://movie-phinf.pstatic.net/20150922_4/14429125602616zXzR_JPEG/movie_image.jpg?type=m886_590_2" alt="이터널 선샤인">
							<em class="num_info">5</em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">이터널 선샤인</strong>
						<span class="sub_info"><a href="">예매하기</a> &nbsp; <a href="">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20190528_36%2F1559024198386YVTEw_JPEG%2Fmovie_image.jpg" alt="기생충">
							<em class="num_info">6</em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">기생충</strong>
						<span class="sub_info"><a href="">예매하기</a> &nbsp; <a href="">상세정보</a></span>
					</div>
				</li>
				<li>
					<div class="top_info">
						<span class="poster_info">
							<img src="https://movie-phinf.pstatic.net/20160609_268/1465448526366Lib2y_JPEG/movie_image.jpg?type=m886_590_2" alt="500일의 썸머">
							<em class="num_info">7</em>
						</span>
						<div class="over_box">
							<div class="inner">
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">500일의 썸머</strong>
						<span class="sub_info"><a href="">예매하기</a> &nbsp; <a href="">상세정보</a></span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
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