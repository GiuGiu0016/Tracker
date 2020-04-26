<!DOCTYPE html>
<%@page import="it.dstech.modells.ArmaPreferita"%>
<%@page import="it.dstech.modells.Eroe"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="java.util.List"%>
<%@page import="it.dstech.service.GestioneDB"%>
<%@page import="it.dstech.modells.Utente"%>
<html>
<title>MenuA</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
#tab {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#tab td, #tab th {
  border: 1px solid #ddd;
  padding: 8px;
}

#tab tr:nth-child(even){background-color: #f2f2f2;}

#tab tr:hover {background-color: #ddd;}

#tab th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: olive;
  color: white;
}
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">
<%
EntityManagerFactory emf = (EntityManagerFactory) request.getServletContext().getAttribute("emf");
Utente u = (Utente) session.getAttribute("Utente"); 
GestioneDB gest = new GestioneDB();
List<Utente> listaUtenti = gest.listaUtenti(emf);
List<Eroe> listaEroi = gest.listaEroi(emf);
List<ArmaPreferita> listaArmi = gest.listaArmi(emf);
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
      <a href="#Utenti" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-group fa-fw w3-margin-right"></i>PROFILO UTENTI</a> 
      <a href="#Eroi" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user-secret fa-fw w3-margin-right"></i>EROI</a> 
      <a href="#Armi" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bomb fa-fw w3-margin-right"></i>ARMI</a> 
  
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
    <h1><b>Profilo Admin</b></h1>
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
      <h1><b>Tabella Utenti</b></h1>
  
  <div class="w3-container w3-padding-large" style="margin-bottom:32px" id="tabelle">
   <div id="Utenti">
   <table id="tab">
  <tr>
    <th>ProfileImage</th>
    <th>Username</th>
    <th>Nome</th>
    <th>Cognome</th>
    <th>Età</th>
    <th>Email</th>
  </tr>
  <%for(Utente utente:listaUtenti) {%>
  <tr>
    <td><img src="data:image/jpg;base64,<%= utente.getImageUtente() %>" style="height: 50px;" class="w3-round"></td>
    <td><%= utente.getUsername() %></td>
    <td><%= utente.getNome() %></td>
    <td><%= utente.getCognome() %></td>
    <td><%= utente.getEta() %></td>
    <td><%= utente.getEmail() %></td>
  </tr>
  <%} %>
  </table>
  </div>
        <h1><b>Tabella Eroi</b></h1>
  
  <div id="Eroi">
   <table id="tab">
  <tr>
    <th>ImageEroe</th>
    <th>Nome</th>
    <th>Fatality</th>
    <th>Fazione</th>
    
  </tr>
  <%for(Eroe e:listaEroi) {%>
  <tr>
    <td><img src="data:image/jpg;base64,<%= e.getImage() %>" style="height: 80px;" class="w3-round"></td>
    <td><%= e.getNome()%></td>
    <td><%= e.getPotereEroe() %></td>
    <td><%= e.getFazione() %></td>
    
  </tr>
  <%} %>
  </table>
    <hr>
     <form action="AddEroe.jsp" method="post">
      <button class="w3-button w3-dark-grey w3-padding-large w3-margin-top w3-margin-bottom" type="submit">
        <i class="w3-margin-right"></i>&#10133 Aggiungi Eroe
      </button>
      </form>
      </div>
            <h1><b>Tabella Armi</b></h1>
      
   <div id="Armi">
   <table id="tab">
  <tr>
    <th>NomeArma</th>
    <th>Danno</th>
    <th>Colpi Al Secondo</th>
  </tr>
  <%for(ArmaPreferita a:listaArmi) {%>
  <tr>
    <td><%= a.getNome() %></td>
    <td><%= a.getDanno()%></td>
    <td><%= a.getColpiAlSecondo() %></td>
  </tr>
  <%} %>
  </table>
    <hr>
     <form action="AggiungiPartita.jsp" method="post">
      <button class="w3-button w3-dark-grey w3-padding-large w3-margin-top w3-margin-bottom" type="submit">
        <i class="w3-margin-right"></i>&#10133 Aggiungi Arma
      </button>
      </form>
      </div>
    <hr>
    </div>
  </div>
  
 <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.instagram.com/thefinalplayer_psn/" title="W3.CSS" target="_blank" class="w3-hover-opacity">thefinalplayer_psn</a></div>
</body>
</html>
