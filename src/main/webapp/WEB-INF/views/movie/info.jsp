<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<style type="text/css">
.swiper {
	width : 1400px;
	height : 400px;
}

.swiper-slide  img{
	display : block;
	width : 100%;
	height : 100%;
	object-fit : cover;
}
.detail .detail_info2 {
    margin-bottom: 17px;
    font-size: 13px;
}
ul {
    list-style: none;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.detail .poster_info {
    position: absolute;
    top: -66px;
    left: 0;
    width: 205px;
    height: 305px;
    z-index: 1;
}
div{
	display : block;
}
.detail {
    position: relative;
    min-height: 240px;
    padding-left: 245px;
    margin-bottom: 15px;
}
.detail .detail_info2 > li {
    margin-top: 11px;
}
.content .tit_info {
    display: block;
    margin-bottom: 20px;
    font-size: 15px;
}
.detail .poster_info img {
    width: 100%;
    border-radius: 4px;
}
img {
    border: none;
    vertical-align: top;
    border-radius: 10px;
}

.content {
    width: 980px;
    margin: 0 auto;
    padding: 50px 0 0 0;
}
.resrvation a {
	display: block;
	color : white;
	text-decoration : none;
	border-radius: 10px;
	background-color : crimson;
	width : 100px;
	height : 30px;
	text-align : center;
	font-weight: bold;
	padding-top:5px
}
.resrvation a:hover {
  background-color : #009999;
  color : white;
}
.story {
	padding : 10px;
	width : 500px;
}
.detail_story {
	font-size : 15pt;
	font-weight : bold;
}
.swiper-wrapper {
	height: 610px;
}
</style>
</head>
<body>
	<div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="${data.cut_1 }" title="스틸컷 1" class="steal_cut"></div>
        <div class="swiper-slide"><img src="${data.cut_2 }" title="스틸컷 2" class="steal_cut"></div>
        <div class="swiper-slide"><img src="${data.cut_3 }" title="스틸컷 3" class="steal_cut"></div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>

	<div class="content">
		<div class="detail">
			<div class="poster_info">
				<img src="${data.poster }">
			</div>
			<div class="tit_info">
				<strong>${data.title }</strong>
			</div>
			
			<ul class="detail_info2">
				<li class="sub_info1">
					<em>장르</em>
					<strong>
					<em>${data.genre} / </em><em>${data.savedate }</em>
					<em class="time_info">${data.running_time }</em>
					</strong>
				</li>
				<li class="sub_info2">
					<em>감독</em>
					<strong class="line_type">
					<em>${data.director }</em>
					</strong>
				</li>
					<li class="sub_info3">
					<em>출연</em>
					<strong class="line_type">
					<em>${data.actor }</em>
					</strong>
				</li>
				<li>
					<p class="resrvation"><a href="">예매하기</a></p>
				</li>
			</ul>
			
			<hr>
			
			<div class="story">
				<p class="detail_story">시놉시스</p>
				<span>
				${data.content }
				</span>
			</div>
			<div class="index"><p>영화번호 : ${data.writeNo }</p></div>
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