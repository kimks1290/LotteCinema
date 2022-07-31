<%@page import="java.util.Random"%>
<%@page import="com.web.root.mybatis.admin.AdminMapper"%>
<%@page import="com.web.root.admin.dto.AdminDTO"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	Random ran = new Random();
double mran = Math.random();
int iran = (int) (mran * 10) + 1;
int lran = (int) (mran * 25) + 97;
String aran = Character.toString((char) lran);
boolean bran = ran.nextBoolean();

String mval = iran + aran;
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<title>영화 좌석 예매</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Lato&display=swap')
	;

* {
	box-sizing: border-box;
}

body {
	background-color: #057695;
	display: flex;
	flex-direction: column;
	color: white;
	align-items: center;
	justify-content: center;
	height: 100vh;
	font-family: 'Lato', 'sans-serif';
}

.movie-container {
	margin: 20px 0;
}

.movie-container select {
	background-color: #fff;
	border: 0;
	border-radius: 5px;
	font-size: 14px;
	margin-left: 10px;
	padding: 5px 15px 5px 15px;
	-moz-appearance: none;
	-webkit-appearance: none;
	appearance: none;
}

.alphabet {
	height: 24px;
	width: 30px;
	margin: 3px;
	color: red;
	text-align: center;
}

.alphabet2 {
	height: 24px;
	width: 30px;
	margin-left: 3px;
	color: red;
	text-align: center;
	right: 100px;
}

.container {
	perspective: 1000px;
	margin-bottom: 30px;
}

.seat {
	background-color: #444451;
	height: 24px; /*12px;*/
	width: 30px; /*15px;*/
	margin: 3px; /*6px;*/
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	color: black; /**/
	text-align: center; /**/
}

.seat.selected {
	background-color: #6feaf6;
}

.seat.occupied {
	background-color: #fff;
}

.seat:nth-of-type(3) {
	margin-right: 24px; /*18px;*/
}

.seat:nth-last-of-type(2) {
	margin-left: 24px /*18px;*/
}

.seat:not(.occupied):hover {
	cursor: pointer;
	transform: scale(1.2);
}

.showcase .seat:not(.occupied):hover {
	cursor: default;
	transform: scale(1);
}

.showcase {
	background-color: rgba(0, 0, 0, 0.1);
	padding: 5px 10px;
	border-radius: 5px;
	color: #000000; /*#777*/
	list-style-type: none;
	display: flex;
	justify-content: space-between;
}

.showcase li {
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 0 10px;
}

.showcase li small {
	margin-left: 10px;
}

.row {
	display: flex;
}

.screen {
	background-color: #fff;
	height: 70px;
	width: 100%;
	margin: 15px 0;
	transform: rotateX(-45deg);
	box-shadow: 0 3px 10px rgba(255, 255, 255, 0.75);
}

input[id="invisible"] {
	display: none;
}

p.text {
	margin: 35px 90px;
}

p.text span {
	color: #6feaf6;
}

.login_info {
	align-items: center;
	margin-left: 90%;
	color: black;
}

.resbutton {
	margin-left: 150px;
}
</style>
</head>
<body>
	<c:if test="${loginUser != null}">
		<div class="login_info">
			<p>${loginUser}님</p>
		</div>
	</c:if>
	<!-- 영화 리스트 SELECT 태그   -->
	<form action="${contextPath}/admin/modify4"
		enctype="multipart/form-data" method="get">
		<%--id=frm--%>
		<div class="movie-container">
			<label>영화제목:</label> <select id="movie" onChange="SelectRedirect();">
				<option>-- 영화선택 --</option>
				<option value="${movieList[3].price}"
					data-movno="${movieList[3].movNo}">${movieList[3].title}</option>
			</select>
		</div>

		<!-- 좌석 상태 종류 표시 -->
		<p></p>
		<ul class="showcase">
			<li>
				<div class="seat"></div> <small>선택가능</small>
			</li>

			<!-- li-->
				<!-- div class="seat selected"></div> <small>선택좌석</small -->
			<!-- /li -->

			<li>
				<div class="seat occupied"></div> <small>예매완료</small>
			</li>
		</ul>

		<div class="container">
			<div class="screen"></div>

			<!-- A열 좌석 -->
			<div class="row">
				<div class="alphabet">A열</div>
				<c:forEach var="i" items="${info}">
					<c:if test="${i.seats<=8}">
						<c:choose>
							<c:when test="${i.status==100 }">
								<div class="seat occupied ${i}" id="cntrl">${i.seats}</div>
							</c:when>
							<c:otherwise>
								<div class="seat ${i}" id="cntrl">${i.seats}<input
										type="checkbox" name="seats" value="${i.seats }">
								</div>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
			</div>
			<!-- B열 좌석 -->
			<div class="row">
				<div class="alphabet">B열</div>
				<c:forEach var="i" items="${info}">
					<c:if test="${i.seats>8 && i.seats<=16}">
						<c:choose>
							<c:when test="${i.status==100 }">
								<div class="seat occupied ${i}">${i.seats-8}</div>
							</c:when>
							<c:otherwise>
								<div class="seat ${i}">${i.seats-8}<input type="checkbox"
										name="seats" value="${i.seats }">
								</div>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
			</div>
			<!-- C열 좌석 -->
			<div class="row">
				<div class="alphabet">C열</div>
				<c:forEach var="i" items="${info}">
					<c:if test="${i.seats>16 && i.seats<=24}">
						<c:choose>
							<c:when test="${i.status==100 }">
								<div class="seat occupied ${i}">${i.seats-16}</div>
							</c:when>
							<c:otherwise>
								<div class="seat ${i}">${i.seats-16}<input type="checkbox"
										name="seats" value="${i.seats }">
								</div>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
			</div>
			<!-- D열 좌석 -->
			<div class="row">
				<div class="alphabet">D열</div>
				<c:forEach var="i" items="${info}">
					<c:if test="${i.seats>24 && i.seats<=32}">
						<c:choose>
							<c:when test="${i.status==100 }">
								<div class="seat occupied ${i}">${i.seats-24}</div>
							</c:when>
							<c:otherwise>
								<div class="seat ${i}">${i.seats-24}<input type="checkbox"
										name="seats" value="${i.seats-40}">
								</div>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
			</div>
			<!-- E열 좌석 -->
			<div class="row">
				<div class="alphabet">E열</div>
				<c:forEach var="i" items="${info}">
					<c:if test="${i.seats>32 && i.seats<=40}">
						<c:choose>
							<c:when test="${i.status==100 }">
								<div class="seat occupied ${i}">${i.seats-32}</div>
							</c:when>
							<c:otherwise>
								<div class="seat ${i}">${i.seats-32}<input type="checkbox"
										name="seats" value="${i.seats }">

								</div>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
			</div>
			<!-- F열 좌석 -->
			<div class="row">
				<div class="alphabet">F열</div>
				<c:forEach var="i" items="${info}">
					<%-- c:set var="l" value="${fn:length(movieList ) }"/--%>
					<c:if test="${i.seats>40 && i.seats<=48}">
						<c:choose>
							<c:when test="${i.status==100 }">
								<div class="seat occupied ${i}">${i.seats-40}</div>
							</c:when>
							<c:otherwise>
								<div class="seat ${i}">${i.seats-40}<input type="checkbox"
										name="seats" value="${i.seats }">

								</div>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
			</div>

			<!-- 선택한 좌석 수 및 총합계 표시 -->
			<p class="text">
				선택한 좌석수<span id="count">0</span> 총합계 <span id="total">0</span> 원
			</p>
			<!-- 예매번호  -->
			<div class="resbutton">
				<input type="submit" id="" value="예매하기" ><br> <br> 
				<a href="/root/admin/logout1" style="color:white">LOGOUT</a>
			</div>
			<input type="text" name="no" id="invisible"
				value="<%=mval%>">
			<!--이     름  -->
			<input type="text" name="name" id="invisible" value="name_a">
			<!-- 영화제목 -->
			<input type="text" name="title" id="invisible"
				value="${info[3].title}">
			<!-- 영 화 관  -->
			<input type="text" name="theater" id="invisible"
				value="${info[3].theater}">
			<!-- 상영시간 -->
			<input type="text" name="time" id="invisible" value="${info[3].time}">
			<!-- 아 이 디  -->
			<input type="text" name="id" id="invisible" value="id_a">
			<!-- 전화번호 -->
			<input type="text" name="phone" id="invisible" value="010-1234-1234">
			<!-- 가     격  -->
			<input type="text" name="price" id="invisible"
				value="${info[3].price}">
			<!-- 좌 석 수  -->
			<input type="text" name="count" id="invisible" value="48">


			<!-- 확인 -->
			<%-- c:if test="${loginUser == null}">
			<input type="button" value="예매하기" class="btn">
		</c:if  --%>
			<%-- c:if test="${loginUser != null}"  --%>

			<%-- /c:if  --%>
		</div>

	</form>
	<a href="/root/index" style="color:white">홈으로 돌아가기</a>
	<!-- 스크립트 -->
	<script>
   
    
    //사용할 변수 선언
    const container = document.querySelector('.container');
    const seats = document.querySelectorAll('.row .seat:not(.occupied');
    const count = document.getElementById('count');
    const total = document.getElementById('total');
    const movieSelect = document.getElementById('movie');
    
   /* movieSelect.click(function callback() {
    	()for문
    }};*/
    populateUI();
    let ticketPrice = +movieSelect.value;

    // 선택한 영화인덱스 및 가격 로컬스토리지에 저장  
    function setMovieData(movieIndex, moviePrice) {
      localStorage.setItem('selectedMovieIndex', movieIndex);
      localStorage.setItem('selectedMoviePrice', moviePrice);
    }

    //  총합계 및 좌석수 업데이트
    function updateSelectedCount() {
      const selectedSeats = document.querySelectorAll('.row .seat.selected');
		
      
      const seatsIndex = [...selectedSeats].map((seat) => [...seats].indexOf(seat));

      localStorage.setItem('selectedSeats', JSON.stringify(seatsIndex));

      //선택된 좌석 배열에다 집어넣기
      //배열을 통해 mapping
      //새로생성된 배열의 인덱스 반환

      const selectedSeatsCount = selectedSeats.length;

      count.innerText = selectedSeatsCount;
      
      if(selectedSeatsCount>4){							  
    	  alert("최대 4개까지만 선택가능합니다!");	
      	selectedSeats.disabled = true;
      	
      }		
      total.innerText = selectedSeatsCount * ticketPrice;
    }

    // 로컬 스토리지부터 데이터 가져오기 및 UI 채우기
    function populateUI() {
      const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats'));
      if (selectedSeats !== null && selectedSeats.length > 0) {
        seats.forEach((seat, index) => {
          if (selectedSeats.indexOf(index) > -1) {
            seat.classList.add('selected');
          }
        });
      }

      const selectedMovieIndex = localStorage.getItem('selectedMovieIndex');

      if (selectedMovieIndex !== null) {
        movieSelect.selectedIndex = selectedMovieIndex;
      }
    }

    // 영화 'select' 이벤트
    movieSelect.addEventListener('change', (e) => {
      ticketPrice = +e.target.value;
      setMovieData(e.target.selectedIndex, e.target.value);
      updateSelectedCount();
      
      const [option] = e.target.selectedOptions  
      const opt = "movie" + option.dataset.movno 
      alert('movno is:' + opt					 
			  );								 	
      window.location.replace(opt);				 
    });
    
    // 좌석 'click' 이벤트
    container.addEventListener('click', (e) => {
      if (e.target.classList.contains('seat') && !e.target.classList.contains('occupied')){
    	   e.target.classList.toggle('selected');}

      console.log('classList', e.target.classList);
        updateSelectedCount();
    });
    
updateSelectedCount();
	
//로그인 안된 상태에서 예매하기
var btn = document.querySelector('.btn');
btn.onclick=function(){
	alert('로그인이 필요합니다');
}
	 </script>
</body>
</html>