<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrazione</title>
<link rel="stylesheet" href="static/Register.css">
</head>
<body>
<%
	String messaggio = (String) request.getAttribute("messaggio");
	if (messaggio != null) {
%>
	<h3 style="color: red;"><%=messaggio%>	</h3>
<%	} %>
      <div class="pre_contenitore">
			<p>Register</p>
		</div>
		<div class="contenitore">
			<form action="register" method="post" enctype="multipart/form-data">
				<p>Inserisci le tue credenziali</p>
					<p>
						<label>USERNAME</label><br>
							<input type="text" name="username" class="username" placeholder="Username">
					</p>
					<p>
						<label>NOME</label><br>
							<input type="text" name="nome" class="nome" placeholder="Nome">
					</p>
					<p>
						<label>COGNOME</label><br>
							<input type="text" name="cognome" class="cognome" placeholder="Cognome">
					</p>
					<p>
						<label>EMAIL</label><br>
							<input type="email" name="email" class="email" placeholder="email@gmail.com">
					</p>
					<p>
						<label>ETA</label><br>
							<input type="number" name="eta" class="eta" placeholder="18" step="1" min="1">
					</p>
					<p>
						<label>PASSWORD</label><br>
							<input type="Password" name="password" class="password" placeholder="Password">
					</p>
					<p>
						<label>IMMAGINE PROFILO</label><br>
							<input type="file" name="image" class="image" placeholder="Inserisci immagine">
					</p>
						<input type="submit" name="btn">
			</form>
			
			<form action="home.jsp" method="post" enctype="multipart/form-data">
					<input type="submit" name="btn" value="Indietro">
			</form>
			
		</div>

</body>
</html>