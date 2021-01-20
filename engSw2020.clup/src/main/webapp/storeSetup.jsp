<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Line Up</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/modifyBooking.css">
    
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/dropdown.css">
    
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    
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
        	<a href="#">Gestione negozio</a>
        	<a href="#">Gestione dipendente</a>
        	<a href="#">Gestione categorie</a>       	   	
          </div>
        </li>
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
<form class="w3-container w3-card-4 w3-light-grey">
  <h3 style="font-weight: bold; text-align: center">Gestione negozio</h3>
  <p style="font-weight: bold; text-align: center">Modificare i seguenti dati e salvare le informazioni.</p>
  <p style="font-weight: bold; text-align: center">ATTENZIONE: Il nome non � modificabile!</p>

  <p><label>Nome negozio</label>
  <input class="w3-input w3-border" name="nomeNegozio" type="text" value="<% out.println(request.getAttribute("Name")); %>" readonly></p>

  <p><label>Descrizione</label>
  <input class="w3-input w3-border" id="descrizione" name="descrizione" value="<% out.println(request.getAttribute("Descrizione")); %>" type="text"></p>
  <p><label>Telefono</label>
  <input class="w3-input w3-border" name="Telefono" value="<% out.println(request.getAttribute("NumeroDiTelefono")); %>" type="text"></p>
  <p><label>Indirizzo</label>
  <input class="w3-input w3-border" name="Indirizzo" value="<% out.println(request.getAttribute("Indirizzo")); %>" type="text"></p>
   <p><label>Citt�</label>
  <input class="w3-input w3-border" name="city" value="<% out.println(request.getAttribute("City")); %>" type="text"></p>
   <p><label>Capienza</label>
  <input type="number" id="quantity" name="quantity" min="1" max="300" value="<% out.print(request.getAttribute("Capienza")); %>" >
  <p><label>Posti prenotabili</label>
  <input type="number" id="postiPrenotabili" name="postiPrenotabili" value="<%out.print(request.getAttribute("CapienzaPrenotabile"));%>"  min="1" max="300">
  <div class="btn-block">
          		<button type="submit">Submit</button>
        	</div>
  <br>
  
</form>
</body>


<footer class="footer" style="position: inherit">
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