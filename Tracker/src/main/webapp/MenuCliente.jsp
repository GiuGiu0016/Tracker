<!DOCTYPE html>
<%@page import="it.dstech.modells.Eroe"%>
<%@page import="it.dstech.modells.ArmaPreferita"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="it.dstech.service.GestioneDB"%>
<%@page import="it.dstech.modells.Utente"%>
<html>
<title>MenuC</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">
<%
EntityManagerFactory emf = (EntityManagerFactory) request.getServletContext().getAttribute("emf");
Utente u = (Utente) session.getAttribute("Utente");
GestioneDB gest = new GestioneDB();
List<ArmaPreferita> listaArmi = gest.listaArmi(emf);
List<Eroe> listaEroe = gest.listaEroi(emf);
%>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <img src="data:image/jpg;base64,<%= u.getImageUtente() %>" style="width:45%;" class="w3-round"><br><br>
    <h4><b>Operazioni</b></h4>
  </div>
  <div class="w3-bar-block">
    <a href="#Profilo" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>PROFILO UTENTE</a> 
    <a href="#Statistiche" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>STATISTICHE</a> 
  </div>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="Profilo">
    <a href="#"><img src="/w3images/avatar_g2.jpg" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
    <h1><b>Profilo utente</b></h1>
    </div>
  </header>
  
  <!-- First Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <div class="w3-container w3-white">
        <p><b>Nome</b></p>
        <p><%= u.getNome() %></p>
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <div class="w3-container w3-white">
        <p><b>Cognome</b></p>
        <p><%= u.getCognome() %></p>
      </div>
    </div>
    <div class="w3-third w3-container">
      <div class="w3-container w3-white">
        <p><b>Email</b></p>
        <p><%= u.getEmail() %></p>
      </div>
    </div>
  </div>
  <div class="w3-container w3-padding-large" style="margin-bottom:32px" id="Statistiche">
    <hr>
    
    <h4>Vittorie/Sconfitte per Fazione</h4>
    <!-- Progress bars / Skills -->
    <p>Alleanza</p>
    <div class="w3-grey">
      <div class="w3-container w3-dark-grey w3-padding w3-center" style="width:95%">95%</div>
    </div>
    <p>Coalizione</p>
    <div class="w3-grey">
      <div class="w3-container w3-dark-grey w3-padding w3-center" style="width:85%">85%</div>
    </div>
    <p>Generale</p>
    <div class="w3-grey">
      <div class="w3-container w3-dark-grey w3-padding w3-center" style="width:80%">80%</div>
    </div>
        <p>
     <form action="AggiungiPartita.jsp">
      <button class="w3-button w3-dark-grey w3-padding-large w3-margin-top w3-margin-bottom" type="submit">
        <i class="w3-margin-right"></i>&#10133 Aggiungi Partita
      </button>
      </form>
    </p>
    <hr>
    
    <h4>Calcolo statistiche partite</h4>
    <!-- Pricing Tables -->
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-black w3-xlarge w3-padding-32">Coalizione</li>
          <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-teal w3-padding-large w3-hover-black">Sign Up</button>
          </li>
        </ul>
      </div>
      
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-teal w3-xlarge w3-padding-32">Generale</li>
          <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-teal w3-padding-large w3-hover-black">Sign Up</button>
          </li>
        </ul>
      </div>
      
      <div class="w3-third">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-black w3-xlarge w3-padding-32">Alleanza</li>
          <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-teal w3-padding-large w3-hover-black">Sign Up</button>
          </li>
        </ul>
      </div>
    </div>
  </div>
  
 <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.instagram.com/thefinalplayer_psn/" title="W3.CSS" target="_blank" class="w3-hover-opacity">thefinalplayer_psn</a></div>
</div>
</body>
</html>
