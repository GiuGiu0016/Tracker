 <!DOCTYPE html>
<%@page import="it.dstech.modells.Eroe"%>
<%@page import="it.dstech.modells.ArmaPreferita"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="it.dstech.service.GestioneDB"%>
<%@page import="it.dstech.modells.Utente"%>
<html lang="en">
<title>AggiungiPartita</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
input[type=text],[type=number],[type=datetime-local],select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc; 
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color:gray;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: olive;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
<body>
<% 
EntityManagerFactory emf = (EntityManagerFactory) request.getServletContext().getAttribute("emf");
Utente u = (Utente) session.getAttribute("Utente");
GestioneDB gest = new GestioneDB();
List<ArmaPreferita> listaArmi = gest.listaArmi(emf);
List<Eroe> listaEroe = gest.listaEroi(emf);
%>

<!-- Header -->
<header class="w3-container w3-grey w3-center" style="padding:32px 16px">
  <h1 class="w3-margin w3-jumbo">Benvenuto : <%= u.getUsername() %> </h1>
  <p class="w3-xlarge">Inserisci i dati richiesti per continuare oppure torna indietro</p>
  <form action="MenuCliente.jsp">
  <button class="w3-button w3-black w3-padding-large w3-large w3-margin-top">Indietro</button>
  </form>
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-container" style="padding-top: 64px; padding-bottom: 64px;">
  <div class="w3-content">
    <div class="w3-twothird">
      <h1>Inserisci i seguenti dati dati per creare una nuova partita:</h1>
		<form action="addPartita" method="post">
			<input name="memo" id="memo" type="text" placeholder="Inserisci un memo">
			<input name="kill" id="kill" type="number" placeholder="Quante uccisioni hai effettuato?">
			<input name="morti" id="morti" type="number" placeholder="Quante volte sei morto?">
			<input name="posizione" id="posizione" type="number" placeholder="In che posizione sei arrivato?">
			<label for="Arma">Arma pi� utilizzata?</label>
			<select id="Arma" name="Arma">
  				<% for(ArmaPreferita a : listaArmi) { %>
				<option value="<%=a.getNome()%>"><%=a.getNome()%></option>
				<% } %>
			</select>
			<label for="Operatore">Quale operatore hai utilizzato?</label>
			<select id="Operatore" name="Operatore">
			  <% for(Eroe e : listaEroe) { %>
			  <option value="<%=e.getNome()%>"><%=e.getNome()%></option>
			  <% } %>
			</select>
			<label for="Operatore">Inserisci la data in cui � stata fatta la partita?</label>
			<input id="date" name="date" type="datetime-local">
			<input type="submit" value="Invia">
		</form>
    </div>

    <div class="w3-third w3-center">
      <img style="width: 380px;" alt="imageCod" src="https://i.pinimg.com/originals/b2/ef/26/b2ef2677d1d657e33cf60e6953e118d4.jpg">
    </div>
  </div>
</div>
<!-- Footer -->
<footer class="w3-container w3-padding-35 w3-center w3-black">  
 <p>Powered by <a href="https://www.instagram.com/thefinalplayer_psn/" target="_blank">thefinalplayer_psn</a></p>
</footer>
</body>
</html>
