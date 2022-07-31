<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 문의</title>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
* {	font-family: "Noto Sans KR", sans-serif;}
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
	margin : 0 auto;
	text-align : center;
	/*border : 1px solid red;*/
}
.writeForm_ul {
	list-style : none;
	align : center;
	padding-left : 70px;
}
.liWrite {
	display : list-item;
	float : left;
	width : 200px;
	margin-right : 20px;
}
a, a:visited, a:link {
	text-decoration : none;
	color : black;
}

.header p {
	margin-top: 50px;
}
.qa {
	border : 1px solid silver;
	padding : 5px;
	border-radius: 5px;
}
.qa_list, .question_list {
	border : 1px solid white;
	padding : 5px;
	border-radius: 5px;
}
.select {
	width : 350px;
	margin : auto;
}
.alert1 {
	width : 980px;
	background-color : #eeeeee;
	text-align : center;
	padding : 10px 0 2px 0;
}
.alert2 {
	width : 980px;
	margin-top : 7px;
}
.st1{
	color : crimson;
}
.st2{
	font-size : 10pt;
	color : gray;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="header">
		<p>고객 센터</p>
	</div>
	<div class="list_up">
		<ul class="writeForm_ul">
			<li class="question_list liWrite"><a href="${contextPath }/board/question">자주하는 질문</a></li>
			<li class="qa liWrite"><a href="${contextPath }/board/writeform">1 대 1 문의</a></li>
			<li class="qa_list liWrite"><a href="${contextPath }/board/boardAllList">1 대 1 문의 목록</a></li>
		</ul>
	</div>
	<div class="body">
		<div class="alert1">
			<strong>자주하는 질문을 이용하시면 궁금증을 더 빠르게 해결하실 수 있습니다.</strong>
				<p>- 1:1 문의글 답변 운영시간 10:00 ~ 19:00</p>
				<p>- 접수 후 48시간 안에 답변 드리겠습니다.</p>					
		</div>
		<div class="alert2">
			<strong>고객님의 문의에 <span class="st1">답변하는 직원은 고객 여러분의 가족 중 한 사람</span>일 수 있습니다.</strong>
			<p class="st2">고객의 언어폭력(비하, 욕설, 반말, 성희롱 등)으로부터 직원을 보호하기 위해 관련 법에 따라 수사기관에 필요한 조치를 요구할 수 있으며, 형법에 의해 처벌 대상이 될 수 있습니다.</p>
		</div>
		<form action="${contextPath }/board/writeSave" method="post">
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
					<td><input type="text" name="title" size="100"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="100" name="content"></textarea></td>
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
				<td><input type="text" name="id"></td>
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