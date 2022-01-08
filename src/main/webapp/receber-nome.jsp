<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Receber Nome</title>
</head>
<body>
	<%
		String nome = request.getParameter("nome");
		String idade = request.getParameter("idade");
	%>
	
	<h1><% out.print(nome); %></h1>
	<h1><% out.print(idade); %></h1>
	
</body>
</html>