<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1 대 1 문의 목록</title>
</head>
<body>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
* {	font-family: "Noto Sans KR", sans-serif;}

tr {
	text-align : center;	
}
.list_up {
	width : 800px;
	height : 50px;
	margin : 0 auto;
	text-align : center;
	/*border : 1px solid red;*/
}
.allList_ul {
	list-style : none;
	align : center;
	padding-left : 70px;
}
.liL {
	display : list-item;
	float : left;
	width : 200px;
	margin-right : 20px;
}
a, a:visited, a:link {
	text-decoration : none;
	color : black;
}
.qa_list {
	border : 1px solid silver;
	padding : 5px;
	border-radius: 5px;
}
.qa, .question_list {
	border : 1px solid white;
	padding : 5px;
	border-radius: 5px;
}
.wrap {
	width : 980px;
	margin : 0 auto;
}
table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    border: 0;
}
th, tr {
	border-bottom: 1px solid #EEEEEE;
    padding: 18px;
    font-size: 15px;
    line-height: 1.3;
}
th {
	border-top: 1px solid #BBBBBB;
    border-bottom-color: #BBBBBB;
    font-weight: bold;
    /*border-top-color: transparent;*/
}
.write {
	width : 900px;
	height : 50px;
	margin : 5px auto;
}
.write a {
	display : block;
	background-color : #EEEEEE;
	width : 100px;
	height : 30px;
	text-align : center;
	padding-top : 5px;
	float : right;
	border-radius: 10px;
}
td{
	border-bottom: 1px solid #EEEEEE;
    padding: 18px;
    font-size: 15px;
    line-height: 1.3;
}
.header {
	text-align : left;
	font-size : 25pt;
	border-bottom : 1px solid #EEEEEE;
	width : 980px;
	margin : 0 auto;
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
	<div class="wrap login">
		<div class="header">
		<p>고객 센터</p>
		</div>
		<div class="list_up">
		<ul class="allList_ul">
			<li class="question_list liL"><a href="${contextPath }/board/question">자주하는 질문</a></li>
			<li class="qa liL"><a href="${contextPath }/board/writeform">1 대 1 문의</a></li>
			<li class="qa_list liL"><a href="${contextPath }/board/boardAllList">1 대 1 문의 목록</a></li>
		</ul>
	</div>
		<div class="alert1">
			<strong>자주하는 질문을 이용하시면 궁금증을 더 빠르게 해결하실 수 있습니다.</strong>
				<p>- 1:1 문의글 답변 운영시간 10:00 ~ 19:00</p>
				<p>- 접수 후 48시간 안에 답변 드리겠습니다.</p>					
		</div>
		<div class="alert2">
			<strong>고객님의 문의에 <span class="st1">답변하는 직원은 고객 여러분의 가족 중 한 사람</span>일 수 있습니다.</strong>
			<p class="st2">고객의 언어폭력(비하, 욕설, 반말, 성희롱 등)으로부터 직원을 보호하기 위해 관련 법에 따라 수사기관에 필요한 조치를 요구할 수 있으며, 형법에 의해 처벌 대상이 될 수 있습니다.</p>
		</div>
		<table class="table table_hover">
		<colgroup>
			<col style="width: 10%;">
			<col style="width: 15%;">
			<col style="width: auto;">
			<col style="width: 15%;">
			<col style="width: 15%;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">id</th>
				<th scope="col">제목</th>
				<th scope="col">조회수</th>
				<th scope="col">답변</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${boardList.size() == 0 }">
				<tr>
					<th colspan="5">등록된 글이 없습니다</th>
				</tr>
			</c:if>
			<c:forEach var="dto" items="${boardList }">
				<tr>
					<td>${dto.writeNo }</td>
					<td>${dto.id }</td>
					<td><a href="${contextPath }/board/contentView?writeNo=${dto.writeNo}">${dto.title }</a></td>
					<td>${dto.hit }</td>
					<c:if test="${dto.answer == null }">
						<td>미답변</td>
					</c:if>
					<c:if test="${dto.answer != null }">
						<td>답변 완료</td>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
			<tr>
				<td colspan="5" align="center">
					<c:forEach var="num" begin="1" end="${repeat }">
						<a href="boardAllList?num=${num }">[ ${num } ]</a>
					</c:forEach>
				</td>
			</tr>			
		</table>
		
		<div class="write">
				<a href="${contextPath }/board/writeform">글작성</a>
		</div>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>