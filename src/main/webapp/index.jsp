<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Curso JSP</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
	
	<style type="text/css">
		h3 {
			position: absolute;
			top: 30%;
			left: 33%;
			right: 33%;
		}
		
		form {
			position: absolute;
			top: 40%;
			left: 33%;
			right: 33%;
		}
		
		strong {
			position: absolute;
			top: 55%;
			left: 33%;
			right: 33%;
			color: red;
			font-size: 14px;
		}
	</style>
	
</head>
<body>
	<h3>Bem vindo ao curso de JSP</h3>

	<form action="ServletLogin" method="POST" class="row g-3 needs-validation" novalidate>
		
		<input type="hidden" value="<%=request.getParameter("url")%>" name="url">

		<div class="col-md-6">
			<label class="form-label">Login:</label> 
			<input class="form-control" name="login" type="text" required>
		</div>

		<div class="col-md-6">
			<label class="form-label">Senha:</label> 
			<input class="form-control" name="senha" type="password" required>
		</div>

		<button type="submit" class="btn btn-primary">Entrar</button>

	</form>
	<strong>${msg}</strong>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
</body>
</html>