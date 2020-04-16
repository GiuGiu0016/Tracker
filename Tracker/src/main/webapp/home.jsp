<!DOCTYPE html>
<html>
<title>Cod-Tracker-Online</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="static/page.css">
<body>
<%
	String messaggio = (String) request.getAttribute("messaggio");
	String messaggio2 = (String) request.getAttribute("messaggio2");
	if (messaggio != null) {
%>
	  <h1>Errore</h1>
		<h2>Non puoi accedere manualmete alla pagina.</h2>

<%}else{%>
<!-- First Parallax Image with Logo Text -->
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity">COD <span class="w3-hide-small">Tracker</span> Online</span>
  
      <div class="w3-row w3-padding-32 w3-section">
      <form action="Accesso.jsp" target="_blank">
        <button class="w3-button w3-black w3-left w3-section" style="margin-left: 10%;" type="submit">
          <i class="fa fa-paper-plane"></i> Accedi
        </button>
      </form>
      <form action="Registrati.jsp" target="_blank">
        <button class="w3-button w3-black w3-right w3-section" style="margin-right: 10%;" type="submit">
          <i class="fa fa-paper-plane"></i> Registrati
        </button>
      </form>
    </div>
    
    
  
  </div>
</div>
<div class="w3-row w3-center w3-white w3-padding-16">
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">1+</span><br>
    Partners
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">10+</span><br>
    Projects Done
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">112+</span><br>
    Happy Clients
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">150+</span><br>
    Meetings
  </div>
</div>
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
  <a href="#home" class="w3-button w3-light-	"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <p>Powered by <a href="https://www.instagram.com/thefinalplayer_psn/" title="TheFinalPlayer_PSN" target="_blank" class="w3-hover-text-green">TheFinalPlayer_PSN</a></p>
</footer>
 <%}%>
</body>
</html>
