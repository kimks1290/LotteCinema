<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
* {	font-family: 'NanumBarunPen';}
body {
	width : 1000px;
	margin : auto;
}
.header, .body, .footer {
	width : 980px;
	margin : auto;	
}
.header {
	font-size : 30pt;
}
.member_info, .point_info, .reserv_info {
	width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    border: 0;
    margin : auto;
}
.info_title, .point_title, .reserv_title{
	border-bottom : 1px solid #eeeeee;
	float : left;
	font-size : 20pt;
	width : 980px
}
th, td {
    border-bottom: 1px solid #EEEEEE;
    height: 30px;
    padding: 7px 4px;
    font-size: 15px;
}
td {
	text-align : center;
}
.move {
	text-align : center;
}
.info a, a:visited, a:link {
	display : block;
	background-color : #eeeeee;
	text-decoration : none;
	color : black;
	width : 100px;
	height : 20px;
	border-radius: 10px;
	padding : 5px;
	margin : auto;
}
.point, .reservation {
	margin-top : 40px;
}

.footer{
	margin : 60px;
}
</style>
</head>
<body>
	<div class="header">
		<p>${loginUser}님의 마이페이지</p>
	</div>
	<div class="body">
		<div class="info">
			<div class="info_title">회원 정보</div>
			
			<table class="member_info">
				<tr>
					<th width="20%;">이름</th> <th width="20%;">아이디</th> <th width="auto;">이메일</th> 
				</tr>
				
				<tr>
					<td>${loginUser }</td> <td>${loginUser }</td> <td>${loginUser }</td>
				</tr>
				
				<tr>
					<td colspan="3"  class="move"><a href="/root/member/viewinfo?id=${loginUser}">상세정보</a></td>
				</tr>
			</table>
		</div>
		
		<div class="point">
			<div class="point_title">포인트</div>
			<table class="point_info">
				<tr>
					<th width="20%;">이름</th><th width="20%;">포인트</th><th width="auto;">쿠폰</th>
				</tr>
				<tr>
					<td>${data.name }</td> <td>${data.point }</td> <td> 쿠폰</td>
				</tr>
			</table>
		</div>
		
		<div class="reservation">
			<div class="reserv_title">영화 예매 목록</div>
			<table class="reserv_info">
				<tr>
					<th width="20%;">이름</th> <th width="auto;">영화</th> <th width="20%">상영일자</th> <th width="10%">인원수</th> <th width="20%">영화관</th> <th width="20%">좌석</th>
				</tr>
				<tr>
					<td></td> <td></td> <td></td> <td></td> <td></td> <td></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="footer">
	</div>
</body>
</html>