<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1 대 1 문의 확인</title>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
* {	font-family: 'NanumBarunPen';}
table {
	width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    border: 0;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
th {
    font-weight: bold;
    display: table-cell;
    vertical-align: inherit;
}

th, td {
    border-bottom: 1px solid #EEEEEE;
    height: 40px;
    padding: 7px 4px;
    font-size: 15px;
}
.body {
	width: 980px;
    margin: 0 auto;
    padding: 50px 0 0 0;
}
.header{
	text-align : center;
	font-size : 25pt;
}
span {
	text-align : center;
}
.submit, .cancel {
	background-color : gainsboro;
	border : 1px solid gainsboro;
	width : 150px;
	height : 30px;
	font-size : 13pt;
}
td {
	text-align : center;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="header">
		<p>1 대 1 문의</p>
	</div>
	<div class="body">
		
		<table class="main">
			<colgroup>
				<col style="width:15%;">
				<col style="width:auto;">
			</colgroup>
			<tbody>
				<tr>
					<th colspan="2"><span>문의 사항</span></th>
				</tr>
				<tr>
					<th>제목</th>
					<td>${data.title }</td>
				</tr>
				<tr>
					<th colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2">${data.content }</td>
				</tr>
				<tr>
					<th colspan="2">답변</th>
				</tr>
				<tr>
					<c:if test="${data.answer != null }">
					<td colspan="2">${data.answer }</td>
					</c:if>
					<c:if test="${data.answer == null }">
					<td colspan="2">아직 답변이 되지 않았습니다.</td>
					</c:if>
				</tr>
			</tbody>
		</table>
		<br><br>
		<table class="person">
			<tr>
				<th colspan="2">고객 정보</th>
			</tr>			
			<tr>
				<th>아이디</th>
				<td>${data.id }</td>
			</tr>
		</table>
		<br><br>
		<table>
			<tr>
				<td colspan="4" align="center">
					<c:if test="${data.id == loginUser }">
						<input type="button"
							onclick="location.href='${contextPath}/board/modifyform?writeNo=${data.writeNo }'"
							value="수정하기">
					 	<input type="button"
							onclick="location.href='${contextPath}/board/delete?writeNo=${data.writeNo }'"
							value="삭제하기">
					</c:if>
						<input type="button"
							onclick="location.href='${contextPath}/board/answerform?writeNo=${data.writeNo }'"
							value="답변하기">
					<input type="button" value="글목록" onclick="location.href='${contextPath}/board/boardAllList'">
				</td>
			</tr>
		</table>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>