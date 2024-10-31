<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="p" scope="page" class="org.libertas.Pessoa"/>
	<jsp:useBean id="pdao" scope="page" class="org.libertas.PessoaDAO"/>
	<jsp:setProperty property="*" name="p" />
	<% pdao.salvar(p); %>
	
	Registro salvo com sucesso
	<br/>
	<a href="index.jsp">Ok</a>
</body>
</html>