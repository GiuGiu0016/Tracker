<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accedi</title>
<link rel="stylesheet" href="static/Login.css">
</head>
<body>
      <div class="pre_contenitore">
			<p>Login</p>
		</div>
		<div class="contenitore">
			<form action="accesso" method="post">
				<p>Inserisci le tue credenziali</p>
					<p>
						<label>USERNAME</label><br>
							<input type="text" name="username" class="username" placeholder="Username">
					</p>
					<p>
						<label>PASSWORD</label><br>
							<input type="Password" name="password" class="password" placeholder="Password">
					</p>
						<input type="submit" name="btn">
			</form>
			
			<form action="home.jsp" method="post" enctype="multipart/form-data">
					<input type="submit" name="btn" value="Indietro">
			</form>
			
		</div>

</body>
</html>