
<%@page import="javax.sound.midi.MidiDevice.Info"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//1. 좌석 배열 생성
	int[] arr = new int[48]; 
	for(int i=0 ; i<arr.length; i++){
	arr[i]=(int)i+1;
	System.out.println(arr[i]);
	}

	
	//2. X표시할 원소들의 배열 생성	(db값)
	//  int info1 = Integer.parseInt("${info1.seats}");
	//  System.out.println(info1);
	// HashSet<Integer> ss1 = new HashSet();	
	// 		ss1.add(info1);
			
	//3. 48개 좌석에서 X표시하기			
	//	for(int i=0; i<arr.length; i++) {
	//		if(ss1.contains(arr[i])){
	//			arr[i]=0;
				
	//		}System.out.println(arr[i]);
	//		}	
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- link rel="stylesheet" type="text/css" href="/Project_movie/style.css" />  -->    
   

<title>Movie Seat Booking</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Lato&display=swap');

* {
  box-sizing: border-box;
}

body {
  background-color: #242333;
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

.container {
  perspective: 1000px;
  margin-bottom: 30px;
}

.seat {
  background-color: #444451;
  height: 24px; /*12px;*/
  width: 30px;/*15px;*/
  margin: 3px; /*6px;*/
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  color : black;/**/
  text-align : center;/**/
}

.seat.selected {
  background-color: #6feaf6;
}

.seat.occupied {
  background-color: #fff;
}

.seat:nth-of-type(2) {
  margin-right:24px;/*18px;*/
}

.seat:nth-last-of-type(2) {
  margin-left: 24px/*18px;*/
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
  color: #777;
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

p.text {
  margin: 5px 0;
}

p.text span {
  color: #6feaf6;
}
</style>
</head>
<body>
	<form action="result" method="get">
	 <div class="movie-container">
      <label>영화선택:</label>
      <select id="movie" onChange="SelectRedirect();">				 					
        	<%--c:forEach var="film" items="${movieList}">
        			<option value="${film.price}">${film.title}</option>
        		
        	</c:forEach--%>
      </select>
    </div>
	
	<%
	String s[] = new String[5];
	for(int i=0; i<=4; i++){ 
		
		
		s[i] = "seat"+i;
		System.out.println(s[i]);
	} 
	%>
	
	<%for(int i=0; i<=4; i++){ %>
	<c:set var="seat0" value="${info0.seats }"/>
	<c:out value="${s[i]}"/>
	<%} %>
	<c:set var="seat0" value="${info0.seats }"/>
	<c:set var="seat1" value="${info1.seats }"/>
	<c:set var="seat2" value="${info2.seats }"/>
	<c:set var="seat3" value="${info3.seats }"/>
	<c:set var="seat4" value="${info4.seats }"/>
	<%
		int seat0 = (int)pageContext.getAttribute("seat0");
		int seat1 = (int)pageContext.getAttribute("seat1");
		int seat2 = (int)pageContext.getAttribute("seat2");
		int seat3 = (int)pageContext.getAttribute("seat3");
		int seat4 = (int)pageContext.getAttribute("seat4");
	%>
	<p><%=seat0 %></p>
	<p><%=seat1 %></p>
	<p><%=seat2 %></p>
	<p><%=seat3 %></p>
	<p><%=seat4 %></p>

	
    <ul class="showcase" >
      <li>
        <div class="seat"></div>
        <small>선택가능</small>
      </li>

      <li>
        <div class="seat selected"></div>
        <small>선택좌석</small>
      </li>

      <li>
        <div class="seat occupied"></div>
        <small>예매완료</small>
      </li>
    </ul>

	<div class="container"> 
      <div class="screen"></div> 
	  <c:forEach begin="1" end="6" varStatus="loop">
      <div class="row">
      <c:forEach begin="1" end="8" varStatus="loop2">
      	<c:set var="k" value="${loop2.count + (loop.count-1)*8 }"/>
      	
		<c:choose> 
		<c:when test="${k!=1}">  
		   <div class="seat">${k}
        	<input type="hidden" value="" >
        </div>
       </c:when> <c:otherwise>
       	<div class="seat occupied">${k }
        	<input type="hidden" value="" >
        </div>
       </c:otherwise>
      </c:choose>  
      </c:forEach>   
      </div> 
	  </c:forEach>	
      </div>
    
     
 	
    <p class="text">
      	선택한 좌석수<span id="count">0</span> 총합계 <span id="total">0</span> 원
    </p>
    <input type="submit" value="확인">
    </form>
    <script>
    const container = document.querySelector('.container');
    const seats = document.querySelectorAll('.row .seat:not(.occupied');
    const count = document.getElementById('count');
    const total = document.getElementById('total');
    const movieSelect = document.getElementById('movie');

    populateUI();
    let ticketPrice = +movieSelect.value;

    // Save selected movie index and price
    function setMovieData(movieIndex, moviePrice) {
      localStorage.setItem('selectedMovieIndex', movieIndex);
      localStorage.setItem('selectedMoviePrice', moviePrice);
    }

    // update total and count
    function updateSelectedCount() {
      const selectedSeats = document.querySelectorAll('.row .seat.selected');

      const seatsIndex = [...selectedSeats].map((seat) => [...seats].indexOf(seat));

      localStorage.setItem('selectedSeats', JSON.stringify(seatsIndex));

      //copy selected seats into arr
      // map through array
      //return new array of indexes

      const selectedSeatsCount = selectedSeats.length;

      count.innerText = selectedSeatsCount;
      total.innerText = selectedSeatsCount * ticketPrice;
    }

    // get data from localstorage and populate ui
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

    // Movie select event
    movieSelect.addEventListener('change', (e) => {
      ticketPrice = +e.target.value;
      setMovieData(e.target.selectedIndex, e.target.value);
      updateSelectedCount();
    });
    
    // Seat click event
    container.addEventListener('click', (e) => {
      if (e.target.classList.contains('seat') && !e.target.classList.contains('occupied')){
    	  { e.target.classList.toggle('selected');}}
		
        updateSelectedCount();
       
      
    });
	
	//page redirect event
/*	function SelectRedirect(){
		
		switch(document.getElementById('s1').value){
		case "title1":
			window.location = "../admin/title1.jsp";
			break;
		case "title2":
			window.location = "../admin/title2.jsp";
			break;
		case "title3":
			window.location = "../admin/title3.jsp";
			break;
		case "title4":
			window.location = "../admin/title4.jsp";
			break;
		}
	}*/
    
    /*   const todo = document.querySelector("div.todo-list h1:nth-child(2)");
        function handleTitleClick() {
            if (todo.style.color === "blue") {
                todo.style.color = "tomato";
            } else {
                todo.style.color = "blue";
            };
        };
        todo.addEventListener("click", handleTitleClick); 
        
        if (e.target.classList.contains('seat'))
        { e.style.color ="#6feaf6";}else {
            todo.style.color = "#444451";
        };
        e.addEventListener("click", container); 
    */
    
    // intial count and total
    updateSelectedCount();
    </script>
</body>
</html>