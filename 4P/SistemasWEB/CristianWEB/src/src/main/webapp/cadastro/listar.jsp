<%@page import="org.libertas.Pessoa"%>
<%@page import="org.libertas.PessoaDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Cadasto de Pessoas</h1>
	<a href="formulario.jsp?id=0">Novo</a>
	<table border="1">
		<th>Id</th>
		<th>Nome</th>
		<th>Telefone</th>
		<th>Email</th>
		<th>Cidade</th>
		<th>Endereço</th>
		<th>CEP</th>
		<th></th>
		<th></th>
		
		<%
			PessoaDAO dao = new PessoaDAO();
			for (Pessoa p : dao.listar()) {
				out.print("<tr>");
				out.print("<td>" + p.getIdpessoa() + "</td>");
				out.print("<td>" + p.getNome() + "</td>");
				out.print("<td>" + p.getTelefone() + "</td>");
				out.print("<td>" + p.getEmail() + "</td>");
				out.print("<td>" + p.getCidade() + "</td>");
				out.print("<td>" + p.getEndereco() + "</td>");
				out.print("<td>" + p.getCep() + "</td>");
				out.print("<td>");
				out.print("<a href='formulario.jsp?id=" + p.getIdpessoa() +"'> Alterar </a>");
				out.print("</td>");
				out.print("<td>");
				out.print("<a href='excluir.jsp?id=" + p.getIdpessoa() +"'> Excluir </a>");
				out.print("</td>");
				out.print("</tr>");
			}
		%>
	</table>
	
	<a href="index.jsp">Início</a>
</body>
</html>