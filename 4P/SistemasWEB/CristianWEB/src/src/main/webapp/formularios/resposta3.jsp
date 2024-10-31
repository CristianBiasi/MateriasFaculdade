<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produtos</title>
</head>
<body>
	<%
		
		double valor_dolar = Double.parseDouble(request.getParameter("valor"));
		String descricao = request.getParameter("descricao");
		int quantidade = Integer.parseInt(request.getParameter("quantidade"));
		
		double valor_real = valor_dolar * 5.48;
		double valor_total = valor_real * quantidade;
		
	%>
	
	
	<div>Valor em dólar: $ <%= String.format("%.2f", valor_dolar) %></div>
	<div>Descrição: <%= descricao %></div>
	<div>Valor unitário em reais: R$ <%= String.format("%.2f", valor_real) %></div>
	<div>Valor total em reais: R$ <%= String.format("%.2f", valor_total) %></div>
	

</body>
</html>