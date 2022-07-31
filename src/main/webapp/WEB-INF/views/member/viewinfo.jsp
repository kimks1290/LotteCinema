<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<style type="text/css">
* {	font-family: 'NanumBarunPen';}
.header {
	width : 980px;
	border-bottom : 1px solid #eeeeee;
	margin : auto;
	margin-bottom : 5px;
}
.main_title{
	font-size : 25pt;
}
.body{
	width : 980px;
	margin : auto;
}
table {
    width: 55%;
    border-collapse: collapse;
    border-spacing: 0;
    border: 0;
    border-radius: 10px;
    float:left;
}
tr {
	
}
th, td {
	padding : 18px;
	border-top: 1px solid #BBBBBB;
    border-bottom: 1px solid #BBBBBB;
}
input, select{
	padding : 5px 0;
}

#year {
	width : 60px;
}
#month, #day {
	width : 70px;
}
tfoot{
	text-align : center;
}
#tel1, #tel2, #tel3{
	width : 80px;
}
#modify, #home {
	background-color : #eeeeee;
	border-radius: 10px;
	border : 1px solid #eeeeee;
	width : 100px;
	height : 30px;
}
#checkPw {
	background-color : #eeeeee;
	border-radius: 10px;
	border : 1px solid #eeeeee;
	width : 150px;
	height : 30px;
}
input {
	border-radius: 10px;
	border : 1px solid gray;
	text-align : center;
}
#month, #day, #tel1 {
	border-radius: 10px;
	text-align : center;
}
.image{
	width : 40%;
	float : right;
	margin-top : 50px;
}
</style>
</head>
<body>
	<div class="header">
		<p class="main_title">회원 정보</p>
	</div>
	<div class="body">
			<table>
				<colgroup>
					<col style="width: 25%;">
					<col style="width: auto;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="col">이름</th>
						<td scope="col">${loginUser }</td>
					</tr>
					<tr>
						<th scope="col">생년월일</th>
						<td scope="col">
						${data.birth }					
						</td>
					</tr>
					<tr>
						<th scope="col">전화번호</th>
						<td scope="col">
							${data.phone }
						</td>
					</tr>
					<tr>
						<th scope="col">이메일</th>
						<td scope="col">${data.email }</td>
					</tr>
					<tr>
						<th scope="col">아이디</th>
						<td scope="col">${data.id }</td>
					</tr>
					<tr>
						<th scope="col">비밀번호</th>
						<td scope="col">${data.pw }</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="button" id="modify" value="회원 정보 수정"
							onclick="location.href='${contextPath}/member/modifyform?id=${loginUser }'"> 
							&nbsp; &nbsp; 
							<input type="button" id="home" value="홈"
							onclick="location.href='${contextPath}/member/mypage'">
						</td>
					<tr>
				</tfoot>
			</table>
		<img class="image" src="https://img.freepik.com/free-vector/modern-movie-tickets_23-2147545237.jpg?t=st=1655793552~exp=1655794152~hmac=5d2850eb15c3be62d6080b15faf6b3a1dc1d9a03584d6c7e26906ce035be6d5c&w=826">
	</div>
	
	<script>
		
	</script>
</body>
</html>