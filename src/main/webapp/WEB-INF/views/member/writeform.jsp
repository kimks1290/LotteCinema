<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
* {	font-family: "Noto Sans KR", sans-serif;}
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
#submit, #idChk {
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
#email {
	width: 170px;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="header">
		<p class="main_title">회원가입</p>
	</div>
	<div class="body">
		<form action="${contextPath }/member/writesave" method="post" id="writeform">
			<table>
				<colgroup>
					<col style="width: 25%;">
					<col style="width: auto;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="col">이름</th>
						<td scope="col"><input type="text" id="name" name="name"></td>
					</tr>
					<tr>
						<th scope="col">생년월일</th>
						<td scope="col">
						<input type="text" name="year" id="year">년 &nbsp;
						<select id="month" name="month" size="1">
							<option value="">선택</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>월 &nbsp;
						<select id="day" name="day" size="1">
							<option value="">선택</option>
							<option value="01">1</option> <option value="02">2</option> <option value="03">3</option> <option value="04">4</option> <option value="05">5</option>
							<option value="06">6</option> <option value="07">7</option> <option value="08">8</option> <option value="09">9</option> <option value="10">10</option>
							<option value="11">11</option> <option value="12">12</option> <option value="13">13</option> <option value="14">14</option> <option value="15">15</option>
							<option value="16">16</option> <option value="17">17</option> <option value="18">18</option> <option value="19">19</option> <option value="20">20</option>
							<option value="21">21</option> <option value="22">22</option> <option value="23">23</option> <option value="24">24</option> <option value="25">25</option>
							<option value="26">26</option> <option value="27">27</option> <option value="28">28</option> <option value="29">29</option> <option value="30">30</option>
							<option value="31">31</option>
						</select>일						
						</td>
					</tr>
					<tr>
						<th scope="col">전화번호</th>
						<td scope="col">
						<select type="text" id="tel1" name="tel1">
							<option value="">선택</option> <option value="010">010</option> <option value="011">011</option> <option value="012">012</option> <option value="016">016</option>
						</select>
						- <input type="text" name="tel2" id="tel2" maxlength="4"> - <input type="text" name="tel3" id="tel3" maxlength="4"></td>
					</tr>
					<tr>
						<th scope="col">이메일</th>
						<td scope="col"><input type="text" name="email" id="email"></td>
					</tr>
					<tr>
						<th scope="col">아이디</th>
						<td scope="col"><input type="text" name="id" id="id"> &nbsp;&nbsp; <button type="button" value="N" onclick="fn_idChk();" id="idChk">중복확인</button></td>
					</tr>
					<tr>
						<th scope="col">비밀번호</th>
						<td scope="col"><input type="password" name="pw" id="pw"></td>
					</tr>
					<tr>
						<th scope="col">비밀번호 확인</th>
						<td scope="col"><input type="password" name="repw" id="repw"> &nbsp;&nbsp; <button type="button" value="N" id="checkPw">비밀번호 일치 확인</button></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><input type="submit" id="submit" value="회원가입"></td>
					<tr>
				</tfoot>
			</table>
		</form>
		<img class="image" src="https://img.freepik.com/free-vector/modern-movie-tickets_23-2147545237.jpg?t=st=1655793552~exp=1655794152~hmac=5d2850eb15c3be62d6080b15faf6b3a1dc1d9a03584d6c7e26906ce035be6d5c&w=826">
	</div>
	<c:import url="../default/footer.jsp" />
	<script type="text/javascript">
		$(document).ready(function(){
			
			$("#submit").on("click", function(){
				if($("#name").val()==""){
					alert("이름을 입력해주세요.");
					$("#name").focus();
					return false;
				}
				
				if($("#year").val()=="" || $("#month").val()=="" || $("#day").val()=="" ){
					alert("생년월일을 입력해주세요.");
					$("#year").focus();
					return false;
				}
				
				if($("#tel1").val()=="" || $("#tel2").val()=="" || $("#tel3").val()=="" ){
					alert("전화번호를 입력해주세요.");
					$("#tel2").focus();
					return false;
				}
				
				if($("#email").val()==""){
					alert("이메일을 입력해주세요.")
					$("#email").focus();
					return false;
				}
				
				if($("#id").val()==""){
					alert("아이디를 입력해주세요.")
					$("#id").focus();
					return false;
				}
				
				if($("#pw").val()==""){
					alert("비밀번호를 입력해주세요.")
					$("#pw").focus();
					return false;
				}
				
				if($("#checkPw").val() == "N"){
					alert("비밀번호 일치 확인 버튼을 눌러주세요.");
					return false;
				}
				
				if($("#idChk").val() == "N"){
					alert("중복확인 버튼을 눌러주세요.");
					return false;
				}else{
					return true;
				}	
				
			})
		})
		
		
		$(document).ready(function(){
			
			$("#checkPw").on("click", function(){
				
				if($("#pw").val() != $("#repw").val()){
					alert("비밀번호가 일치하지 않습니다.");
					$("#pw").focus();
					return false;
					
				} else {
					alert("비밀번호 확인 되었습니다.")
					$("#checkPw").attr("value", "Y");
				}
			
			})
		})
		
		function fn_idChk() {
			
			$.ajax({
				url : "checkid",
				type : "post",
				dataType : "json",
				data : {"id" : $("#id").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디 입니다.");
					} else if(data == 0) {
						$("#idChk").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					}
				}
			})
			
		}
	</script>
	
</body>
</html>