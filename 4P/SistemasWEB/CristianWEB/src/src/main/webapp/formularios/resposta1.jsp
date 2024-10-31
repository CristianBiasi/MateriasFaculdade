<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulário</title>
</head>
<body>
	<%
		String n = request.getParameter("nome");
		int a = Integer.parseInt(request.getParameter("ano"));
		
		
		// calcular idade
		int idade = 2024 - a;
	%>
	
	<div>
	<%= n %> nasceu no ano de <%= a %> e tem <%= idade %> anos de idade;
	</div>

</body>
</html>