<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주하는 질문</title>
<style type="text/css">
* {
	font-family: "Noto Sans KR", sans-serif;;
}

.content {
	border: 1px solid whitesmoke;
	padding: 20px;
	width: 940px;
	margin: auto;
}

.question {
	border: 1px solid whitesmoke;
	padding-top: 10px;
	display: block;
	width: 800px;
	margin: auto;
}

.answer {
	border: 1px solid whitesmoke;
	background-color: whitesmoke;
	margin: auto;
	padding: 5px;
	display: none;
	width: 788px;
}

.close {
	color: red;
}

.btn_question {
	background-color: white;
	border: 0px;
	hight: 30px;
	width: 780px;
	text-align: left;
	font-size: 14pt;
}

#Q1, #Q2, #Q3, #Q4 {
	margin-bottom: 10px;
}

.list_up {
	width: 800px;
	height: 50px;
	margin: 0 auto;
	text-align: center;
	/*border : 1px solid red;*/
}

.question_ul {
	list-style: none;
	align: center;
	padding-left: 70px;
}

.liQ {
	display: list-item;
	float: left;
	width: 200px;
	margin-right: 20px;
	margin-bottom: 10px;
}

a, a:visited, a:link {
	text-decoration: none;
	color: black;
}

.question_list {
	border: 1px solid silver;
	padding: 5px;
	border-radius: 5px;
}

.header p {
	margin-top: 50px;
}

.qa, .qa_list {
	border: 1px solid white;
	padding: 5px;
	border-radius: 5px;
}

.header {
	text-align: left;
	font-size: 25pt;
	border-bottom: 1px solid #EEEEEE;
	width: 980px;
	margin: 0 auto;
}

.alert1 {
	width: 980px;
	background-color: #eeeeee;
	text-align: center;
	padding: 10px 0 2px 0;
	margin: auto;
}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="header">
		<p>고객 센터</p>
	</div>
	<div class="list_up">
		<ul class="question_ul">
			<li class="question_list liQ"><a
				href="${contextPath }/board/question">자주하는 질문</a></li>
			<li class="qa liQ"><a href="${contextPath }/board/writeform">1 대
					1 문의</a></li>
			<li class="qa_list liQ"><a href="${contextPath }/board/boardAllList">1
					대 1 문의 목록</a></li>
		</ul>
	</div>
	<div class="alert1">
		<strong>자주하는 질문을 이용하시면 궁금증을 더 빠르게 해결하실 수 있습니다.</strong>
		<p>더 궁금한 점이 있거나, 이미 문의한 내용과 답변을 확인하려면 1대 1 문의를 이용해주세요</p>
	</div>
	<div class="content">
		<div id="Q1" class="question">
			<button class="btn_question">Q&A 회원가입은 어떻게 하는 건가요?</button>
			<div class="answer">
				<span> 홈페이지 우측 상단의 [회원가입] 버튼을 누르거나 로그인 버튼 클릭 시 노출되는 [회원가입]
					버튼을 클릭해 회원에 가입할 수 있습니다. </span>
			</div>
		</div>

		<div id="Q2" class="question">
			<button class="btn_question">Q&A 회원정보 수정은 어떻게 할 수 있나요?</button>
			<div class="answer">
				<span> [마이시네마] → [나의정보관리] → [회원정보 변경]에서 가능합니다. </span>

			</div>
		</div>

		<div id="Q3" class="question">
			<button class="btn_question">Q&A 비회원도 영화 예매가 가능하나요?</button>
			<div class="answer">

				<span> 비회원 약관 동의 후에 기초 개인정보 (성명+생년월일+휴대폰번호+비밀번호 4자리) 설정 후 예매
					가능합니다.<br> 비회원 로그인 시 예매 및 예매확인/취소 메뉴만 이용 가능하며<br> 관람권,
					할인권을 포함한 기타 결제/할인 수단을 사용할 수 없습니다.<br>
				</span>

			</div>
		</div>

		<div id="Q4" class="question">
			<button class="btn_question">Q&A 영화 예매 취소는 어떻게 진행되나요?</button>
			<div class="answer">

				<span> ■ 티켓예매 (결제 방법)<br> ㆍ 홈페이지 예매는 영화 시작시간 20분 전까지 예매
					가능합니다.<br> ㆍ 모바일 앱/웹 예매는 영화 시작시간까지 예매 가능합니다.<br> ㆍ 영화관 현장
					예매는 영화 시작시간까지 예매 가능합니다.<br>
				<br> ■ 티켓취소<br> ㆍ 홈페이지 취소는 영화 시작시간 20분 전까지 취소 가능합니다.<br>
					ㆍ 모바일 앱/웹 취소는 영화 시작시간 20분 전까지 취소 가능합니다.<br> ㆍ 영화관 현장 취소는 영화
					시작시간 직전까지 취소 가능합니다.<br>
				<br> ※ 현장에서 티켓으로 출력을 진행한 경우 온라인 취소가 불가능하며,<br> 영화관 매표소 /
					스위트샵을 통해 상영시간 전까지 취소 가능합니다.<br>
				<br> ※ 무대인사가 포함된 영화의 경우 행사의 원활한 진행을 위해 상영시간 24시간 이전부터는 취소가
					불가합니다.<br>
				</span>
			</div>
		</div>

		<div id="Q5" class="question">
			<button class="btn_question">Q&A 회원 탈퇴는 어떻게 하나요?</button>
			<div class="answer">
				<span> 회원 탈퇴를 원하실 경우, 홈페이지 [마이시네마] → [나의 정보관리] → [회원 탈퇴] 버튼을
					클릭하여 회원 탈퇴가 가능합니다. </span>
			</div>
		</div>
	</div>
	<c:import url="../default/footer.jsp" />
	<script>
		$("#Q1 button:eq(0)").click(function() {
			$("#Q1 .answer").toggle("fast", "swing");
		});
		$("#Q2 button:eq(0)").click(function() {
			$("#Q2 .answer").toggle("fast", "swing");
		});
		$("#Q3 button:eq(0)").click(function() {
			$("#Q3 .answer").toggle("fast", "swing");
		});
		$("#Q4 button:eq(0)").click(function() {
			$("#Q4 .answer").toggle("fast", "swing");
		});
		$("#Q5 button:eq(0)").click(function() {
			$("#Q5 .answer").toggle("fast", "swing");
		});
	</script>
</body>
</html>