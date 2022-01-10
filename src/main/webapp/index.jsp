<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Curso JSP</title>
</head>
<body>
	<h1>LOGIN</h1>

	<form action="ServletLogin" method="POST">
		<input 
			type="hidden" 
			value="<%= request.getParameter("url") %>"
			name="url"
		/>
		<table>
			<tr>
				<td><label>Login:</label></td>
				<td><input name="login" type="text" /></td>
			</tr>
			<tr>
				<td><label>Senha:</label></td>
				<td><input name="senha" type="password" /></td>
			</tr>
			<tr>
				<td>
					<button type="submit">Entrar</button>
				</td>
			</tr>
		</table>
	</form>
	<strong>${msg}</strong>
</body>
</html>