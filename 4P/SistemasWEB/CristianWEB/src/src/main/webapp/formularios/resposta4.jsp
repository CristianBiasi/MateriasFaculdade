<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Churrasco</title>
</head>
<body>
	<%
		
		int homens = Integer.parseInt(request.getParameter("homens"));
		int mulheres = Integer.parseInt(request.getParameter("mulheres"));
		int criancas = Integer.parseInt(request.getParameter("criancas"));
		
		double carne = (homens * 300) + (mulheres * 270) + (criancas * 250);
		double cerveja = (homens * 2) + (mulheres * 1.5) + (criancas * 0);
		double refri = (homens * 0.3) + (mulheres * 0.6) + (criancas * 1);
		
	%>
	
	
	<div>Deverão ser comprados: </div>
	<div><%= String.format("%.1f", carne) %>g de carne</div>
	<div><%= String.format("%.1f", cerveja) %> litros de cerveja</div>
	<div><%= String.format("%.1f", refri) %> litros de refrigerante</div>
	

</body>
</html>