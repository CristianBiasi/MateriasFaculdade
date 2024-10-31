<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="pdao" scope="page" class="org.libertas.PessoaDAO"/>
	
	<a href='formulario.jsp?id=0 +"'> Novo </a>
	<table border="1" width="100%">
		<th>Id</th>
		<th>Nome</th>
		<th>Telefone</th>
		<th>Email</th>
		<th>Cidade</th>
		<th>Endereço</th>
		<th>CEP</th>
		<th></th>
		<th></th>
		
		<c:forEach var="p" items="${pdao.listar()}">
			<tr>
				<td>${p.idpessoa}</td>
				<td>${p.nome}</td>
				<td>${p.telefone}</td>
				<td>${p.email}</td>
				<td>${p.cidade}</td>
				<td>${p.endereco}</td>
				<td>${p.cep}</td>
				<td><a href='formulario.jsp?id=${p.idpessoa}'> Alterar </a></td>
				<td><a href='excluir.jsp?id=${p.idpessoa}'> Excluir </a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>