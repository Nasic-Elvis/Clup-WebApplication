<% int idUser = (Integer) session.getAttribute("idUser");  
    String user = session.getAttribute("name") + "";
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="it">
<head>
<title>Customer Line Up</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/modifyBooking.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/dropdown.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	$(function() {
		$.datepicker.setDefaults({
			onClose : function(date, inst) {
				$("#selectedDtaeVal").html(date);
			}
		});

		$("#datepicker").datepicker();
	});
</script>

</head>
<header> 
	<nav role="navigation">
		<div class="logo">
			<h4>customer line up</h4>
		</div>
		<ul class="nav-links">
			<li><a href="http://localhost:8080/clup/homepageManager.jsp">Home</a></li>
			<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Prenotazioni</a>
				<div class="dropdown-content">
					<a href="http://localhost:8080/clup/BookingServlet">Visualizza Prenotazioni</a> 
					<a href="http://localhost:8080/clup/addBooking.jsp">Aggiungi Prenotazione</a>
				</div>
			</li>
			<li class="dropdown"><a href="#" class="dropbtn">Store</a>
				<div class="dropdown-content">
					<a href="http://localhost:8080/clup/storeSetup">Gestione negozio</a>
					<a href="http://localhost:8080/clup/getCategoryServlet">Gestione categorie</a>
				</div>
			</li>
			<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Gestione Account</a>
          		<div class="dropdown-content">
        			<a href="http://localhost:8080/clup/UserServlet?iduser=<%= idUser %>">Informazioni Utente</a>
        			<a href="http://localhost:8080/clup/LogoutServlet">Logout</a>       	
          		</div>
        	</li>
        	<li><a href="#">Benvenuto <%= user %></a></li>

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
		<form id="editform" action="AddServlet" class="formContainer"
			method="post" onsubmit="return validateDate();">
			<fieldset>
				<legend>Prenotazione</legend>
				<div class="item">
					<label for="bookingDate">Data Prenotazione <span>*</span></label> <input
						id="datepicker" type="date" name="date" id="datePicker" /> <i
						class="fas fa-calendar-alt"></i>
				</div>
				<div class="item">
					<label for="arrivalTime">Orario di arrivo<span>*</span></label> <input
						id="arrivalTime" type="time" name="arrivalTime"
						placeholder="Orario di arrivo" />
				</div>
				<div class="item">
					<label for="finishTime">Orario di fine<span>*</span></label> <input
						id="finishTime" type="time" name="finishTime"
						placeholder="Orario di fine" />
				</div>
				<div class="item">
					<input type="hidden" id="idStore" type="number" name="idStore"
						value="<%=session.getAttribute("id")%>" />
				</div>
				<div class="item">
					<label for="idUser">Identificativo cliente<span>*</span></label> <input
						id="idUser" type="number" name="idUser" placeholder="ID cliente" />
					<p style="color: red">
						<%
							if (request.getAttribute("errorMsg") != null) {
							out.println(request.getAttribute("errorMsg")); //error message. 
						}
						%>
					</p>
				</div>
				<div class="item">
					<label for="guestUser">Guest User:</label> <input type="checkbox"
						name="checkbox_guest" id="CheckGuestUser" value="guest"
						style="width: 20px" checked>
				</div>

				<div id="guestDiv">
					<div class="item">
						<label for="userName">Nome</label> <input id="userName"
							type="text" name="userName" placeholder="Inserire nome" />
					</div>
					<div class="item">
						<label for="userSurname">Cognome</label> <input id="userSurname"
							type="text" name="userSurname" placeholder="Inserire cognome" />
					</div>

					<div class="item">
						<label for="userEmail">Email</label> <input id="userEmail"
							type="text" name="userEmail" placeholder="Inserire email" />
					</div>
					<div class="item">
						<label for="userTelephoneNumber">Numero di telefono</label> <input
							id="userTelephoneNumber" type="text" name="userTelephoneNumber"
							placeholder="Inserire numero di telefono" />
					</div>
				</div>


				<div class="btn-block">
					<button type="submit">Submit</button>
				</div>
			</fieldset>
		</form>


	</div>

	<script>
		var a = document.getElementById("fee").value;
		var b = document.getElementById("fee1").value;
		var c = document.getElementById("fee2").value;
		var result = a + b + c;
		function calcNumbers() {
			document.getElementByID("result").innerHTML = result;
		}
	</script>
</body>
<footer class="footer" style="position: inherit">
<div class="l-footer">
	<h1>
		<img src="https://i.postimg.cc/y62wcLBq/logo.png" alt="">
	</h1>
	<p>Customer Line Up</p>
</div>
<ul class="r-footer">

	<li class="features">
		<h2>Account</h2>
		<ul class="box h-box">
			<li><a href="#">Home</a></li>
			<li><a href="#">Prenota un ticket</a></li>
			<li><a href="#">Gestione prenotazioni</a></li>
			<li><a href="#">Gestione account</a></li>

		</ul>
	</li>
	<li>
		<h2>Legal</h2>
		<ul class="box">
			<li><a href="#">Privacy Policy</a></li>
			<li><a href="#">Terms of Use</a></li>
		</ul>
	</li>
</ul>
<div class="b-footer">
	<p>All rights reserved by ęCustomerLineUp 2021</p>
</div>
</footer>
</html>
<script>
	function validateDate() {

		var date = document.getElementById("editform").elements[1];
		var startTime = document.getElementById("editform").elements[2];
		var endTime = document.getElementById("editform").elements[3];
		var todayDate = new Date();
		var bookingDate = new Date(date.value);
		var userCheckBox = document.getElementById("editform").elements[5];
		var userName = document.getElementById("editform").elements[6];
		var userSurname = document.getElementById("editform").elements[7];
		var userEmail = document.getElementById("editform").elements[8];
		var userTelephoneNumber = document.getElementById("editform").elements[9];

		if (date.value == null || date.value == ""
				|| (bookingDate.getMonth()<todayDate.getMonth() && bookingDate.getDate() < todayDate.getDate())) {
			alert("Inserire una data valida");
			date.style.background = "#f08080";
			date.focus();
			return false;
		}

		if (startTime.value == null || startTime.value == "") {
			alert("Inserire un orario di arrivo valido");
			startTime.style.background = "#f08080";
			startTime.focus();
			return false;
		}

		if (endTime.value == null || endTime.value == "") {
			alert("Inserire un orario di fine valido");
			endTime.style.background = "#f08080";
			endTime.focus();
			return false;
		}

		var time = startTime.value.split(":");
		var startHour = time[0];
		var startMinutes = time[1];

		var time1 = endTime.value.split(":");
		var endHour = time1[0];
		var endMinutes = time1[1];

		if (startHour > endHour) {
			alert("L'orario di arrivo deve essere minore dell'orario di fine");
			startTime.style.background = "#f08080";
			startTime.focus();
			return false;
		} else if (startHour == endHour) {
			if (startMinutes > endMinutes) {
				alert("L'orario di arrivo deve essere minore dell'orario di fine");
				startTime.style.background = "#f08080";
				startTime.focus();
				return false;
			}
		}
	}
</script>


<script>
	document.getElementById('CheckGuestUser').checked = false;
	document.getElementById("idUser").style.display = "block";

	document.getElementById('guestDiv').style.display = "none";
	document.getElementById('CheckGuestUser').onchange = function() {
		document.getElementById('guestDiv').style.display = this.checked ? 'block'
				: 'none';
		document.getElementById('idUser').style.display = this.checked ? 'none'
				: 'block';

	};

	document.getElementById("datepicker").valueAsDate = new Date();
	var current = new Date();
	current.getHours();
	current.getMinutes();
	document.getElementById("arrivalTime").value = current.getHours() + ":"
			+ current.getMinutes();
	document.getElementById("finishTime").value = (current.getHours() + 1)
			+ ":" + current.getMinutes();
</script>
