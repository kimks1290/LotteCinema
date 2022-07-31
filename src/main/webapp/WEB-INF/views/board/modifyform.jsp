<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
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
	text-align : left;
	font-size : 25pt;
	border-bottom : 1px solid #EEEEEE;
	width : 980px;
	margin : 0 auto;
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
.list_up {
	width : 800px;
	height : 50px;
	margin : auto;
	text-align : center;
	/*border : 1px solid red;*/
}
ul {
	list-style : none;
	align : center;
	padding-left : 70px;
}
li {
	display : list-item;
	float : left;
	width : 200px;
	margin-right : 20px;
	border-bottom : 2px solid black;
}
a, a:visited, a:link {
	text-decoration : none;
	color : black;
}
.qa a {
	color : crimson;
}
.qa {
	border-bottom : 2px solid crimson;
}
.select {
	width : 350px;
	margin : auto;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="header">
		<p>고객 센터</p>
	</div>
	<div class="list_up">
		<ul>
			<li class="question"><a href="${contextPath }/board/question">자주하는 질문</a></li>
			<li class="qa"><a href="${contextPath }/board/writeform">1 대 1 문의</a></li>
			<li class="qa_list"><a href="${contextPath }/board/boardAllList">1 대 1 문의 목록</a></li>
		</ul>
	</div>
	<div class="body">
		<form action="${contextPath }/board/modify" method="post">
		<input type="hidden" name="writeNo" value="${data.writeNo }">
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
					<td><input type="text" name="title" size="100" value="${data.title }"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="100" name="content">${data.content }</textarea></td>
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
				<td><input type="text" name="id" value="${data.id }"></td>
			</tr>
		</table>
		<br><br>
		<div class="select">
		<input class="submit" type="submit" value="확인"> &nbsp;
		<input class="cancel" type="button" value="취소" onclick="location.href='${contextPath}/board/boardAllList'">
		</div>
		</form>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>