<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/modifyBooking.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script>
  	  $( function() {
    	$.datepicker.setDefaults({
        	onClose:function(date, inst){
           	 $("#selectedDtaeVal").html(date);
        	}
    	});

    	$( "#datepicker" ).datepicker();
	  });
	</script>

</head>
<header>
    <nav>
      <div class="logo">
        <h4>customer line up</h4>
      </div>
      <ul class="nav-links">
 		<li><a href="http://localhost:8080/clup/homepageManager.jsp">Home</a></li>
        <li><a href="http://localhost:8080/clup/BookingServlet">Visualizza Prenotazioni</a></li>
        <li><a href="http://localhost:8080/clup/addBooking.jsp">Aggiungi Prenotazione</a></li>
        <li><a href="#">User</a></li>

      </ul>
      <div class="burger">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
      </div>
    </nav>
  </header>
<body>
    <div class="testbox">
      <form id="editform" action="ModifyServlet" class="formContainer" method="post" onsubmit="return validateDate();">
        <fieldset>
          <legend>Booking Information</legend>
            <div class="item">
            		<input id="idBooking" type="hidden" name="idBooking" value="<%=request.getParameter("idBooking")%>"/>
            </div>
            <div class="item">
            	<label for="bookingDate">Data Prenotazione <span>*</span></label>
            		<input id="datepicker" type="date" name="date" />
            			<i class="fas fa-calendar-alt"></i>
            </div>
          	<div class="item">
            	<label for="arrivalTime">Orario di arrivo<span>*</span></label>
            		<input id="arrivalTime" type="time" name="arrivalTime" placeholder="Orario di arrivo" />
          	</div>
          	<div class="item">
            	<label for="finishTime">Orario di fine<span>*</span></label>
            		<input id="finishTime" type="time" name="finishTime" placeholder="Orario di fine"/>
          	</div>
          	<div class="btn-block">
          		<button type="submit">Submit</button>
        	</div>
        </fieldset>
      </form>
     </div>
 
<script >
	var a = document.getElementByID("fee").value;
	var b = document.getElementByID("fee1").value;
	var c = document.getElementByID("fee2").value;
	var result = a+b+c;
	function calcNumbers(){
		document.getElementByID("result").innerHTML = result;
	}
</script>
  </body>
  <footer class="footer">
  <div class="l-footer">
  <h1>
  <img src="https://i.postimg.cc/y62wcLBq/logo.png" alt=""></h1>
  <p>Customer Line Up</p>
  </div>
  <ul class="r-footer">

  <li class="features">
    <h2>
  Account</h2>
  <ul class="box h-box">
  <li><a href="#">Home</a></li>
  <li><a href="#">Prenota un ticket</a></li>
  <li><a href="#">Gestione prenotazioni</a></li>
  <li><a href="#">Gestione account</a></li>

  </ul>
  </li>
  <li>
    <h2>
  Legal</h2>
  <ul class="box">
  <li><a href="#">Privacy Policy</a></li>
  <li><a href="#">Terms of Use</a></li>
  </ul>
  </li>
  </ul>
  <div class="b-footer">
  <p>
  All rights reserved by �CustomerLineUp 2021 </p>
  </div>
  </footer>
</html>
	<script>
		function validateDate(){
			
			var date = document.getElementById("editform").elements[2];
			var startTime = document.getElementById("editform").elements[3];
			var endTime = document.getElementById("editform").elements[4];
			var todayDate = new Date();
			var bookingDate = new Date(date.value);
			console.log(startTime.value);
			if(date.value==null || date.value=="" ||bookingDate<todayDate){
				alert("Inserire una data valido");
				date.style.background="#f08080";
				date.focus();
				return false;				
			}		
			
			if(startTime.value==null || startTime.value==""){
				alert("Inserire un orario di arrivo valido");
				startTime.style.background="#f08080";
				startTime.focus();
				return false;	
			}
			
			if(endTime.value==null || endTime.value==""){
				alert("Inserire un orario di fine valido");
				endTime.style.background="#f08080";
				endTime.focus();
				return false;	
			}
			
			var time = startTime.value.split(":");
			var startHour = time[0];
			var startMinutes = time[1];

			var time1 = endTime.value.split(":");
			var endHour = time1[0];
			var endMinutes = time1[1];

			if(startHour>endHour)
				{alert("L'orario di arrivo deve essere minore dell'orario di fine");
			     startTime.style.background="#f08080";
			     startTime.focus();
				return false;}
			else if(startHour == endHour){
				if(startMinutes > endMinutes){
					alert("L'orario di arrivo deve essere minore dell'orario di fine");
				     startTime.style.background="#f08080";
				     startTime.focus();
					return false;
				}
			}
		}
	</script>