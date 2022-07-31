<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 좌석 예매</title>
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
  text-align : center;
}
.seat.selected {
  background-color: #6feaf6;
}
</style>
</head>
<body>
		<!--c:import url="../admin/movieTitle.jsp"/-->
		<form action="" method="get">
	 <div class="movie-container">
      <label>영화선택:</label>
      <select id="movie" onChange="SelectRedirect();">		
      		<option >-- 영화선택 --</option>		 					
        	<c:forEach var="film" items="${movieList}">
        		<option value="${film.price}" data-movno="${film.movNo}">${film.title}</option>
        	</c:forEach> 
      </select>
    </div>
    
    	 	<div class="container"> 
      		<div class="screen"></div> 
   			<div class="row">
   			<div class="seat">
   				<input type="hidden"  value="">
   			</div>
   			<div class="seat"></div>
   			<div class="seat"></div>
   			<div class="seat"></div>
   			</div>
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
      if(selectedSeatsCount>2){							  //=====>추가
    	  alert("최대 2개까지만 선택가능합니다!");					  //=====>추가
    	  seat.selected = false;
      }													  //=====>추가	
      total.innerText = selectedSeatsCount * ticketPrice; 
    }

    // get data from localstorage and populate ui
    function populateUI() {
      const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats'));
      if (selectedSeats !== null && selectedSeats.length > 0 ) {
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

      const [option] = e.target.selectedOptions  //=====>추가(문제점:좌석을 초과해서 선택 했을때는 이동하지 않음)
      const opt = "movie" + option.dataset.movno //=====>추가
      alert('movno is:' + opt					 //=====>추가
			  );								 //=====>추가	
      window.location.replace(opt);				 //=====>추가
    });
    
    // Seat click event
    container.addEventListener('click', (e) => {
      if (e.target.classList.contains('seat') && !e.target.classList.contains('occupied')){
    	  { e.target.classList.toggle('selected');}}
      
        updateSelectedCount();
      
    });    
updateSelectedCount();



		//선택 태그에서 다중 value값 처리해주기
	/*$(document).ready(function () {

   	 $("#ddlEmployee").change(function () {
  	var cntrol = $(this);
  
  	var MovNo= 'movno: ' + cntrol.find(':selected').data('movno');
  	var Title = ', Title : ' + cntrol.find(':selected').data("title");
  	var value = ', Value : ' + cntrol.val();     
  	var finalvalue = MovNo + Title + value;
  
  	if(cntrol.val() == "")
   	finalvalue = "---";
  	$('#lblSel').text(finalvalue);  
  
 		});

		});*/
		/*$('#movie').on('change', function() {
			var textfrom = $("select option:selected").data('movno')
		  alert('movno is:' + textfrom *//*+
		    '\nvalue b is:' + $("select option:selected").data('valueb')*/
		/*   
		  );
		 
		}).trigger('change');*/
		
		
		
		

    </script>    
</body>
</html>




