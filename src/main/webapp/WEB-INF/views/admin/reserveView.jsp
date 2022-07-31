<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ReserveView2</title>
<style type="text/css">
body {
	align-items: center;
}

.wrap {
	width: 500px;
	display: flex;
	justify-content: center;
}
.home{
	margin-top:400px;
}
</style>
</head>
<body>

	<c:set var="today" value="<%=new java.util.Date()%>" />
	<c:set var="date">
		<fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss" />
	</c:set>
	<h1 align="center">예매 정보</h1>
	<div class="wrap">
		<br>
		<%--c:if test="${loginUser != null}" --%>
			<table class="member_table" border="1">
				<tr>
					<th>예약번호</th>
					<td>${reserve.no}</td>
				</tr>
				<tr>
					<th>이 름</th>
					<td>${reserve.name}</td>
				</tr>
				<tr>
					<th>영화제목</th>
					<td>${reserve.title}</td>
				</tr>
				<tr>
					<th>영 화 관</th>
					<td>${reserve.theater}</td>
				</tr>
				<tr>
					<th>좌 석</th>
					<td><c:if test="${reserve.seats<=8}">
					A열${reserve.seats}석
				</c:if> <c:if test="${reserve.seats>8 && reserve.seats<=16}">
					B열${reserve.seats-8}석
				</c:if> <c:if test="${reserve.seats>16 && reserve.seats<=24}">
					C열${reserve.seats-16}석
				</c:if> <c:if test="${reserve.seats>24 && reserve.seats<=32}">
					D열${reserve.seats-24}석
				</c:if> <c:if test="${reserve.seats>32 && reserve.seats<=40}">
					E열${reserve.seats-32}석
				</c:if> <c:if test="${reserve.seats>40 && reserve.seats<=48}">
					F열${reserve.seats-40}석
				</c:if></td>
				</tr>
				<tr>
					<th>영화시간</th>
					<td>${reserve.time}</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>${reserve.id}</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${reserve.phone}</td>
				</tr>
				<tr>
					<th>가 격</th>
					<td>${reserve.price}</td>
				</tr>
				<tr>
					<th>날 짜</th>
					<td><c:out value="${date}" /></td>
				</tr>
			</table>
		<%--/c:if --%>
		<br> <br><div class="home"><a href="/root/index">홈으로 돌아가기</a></div> 
	</div>
</body>
</html>