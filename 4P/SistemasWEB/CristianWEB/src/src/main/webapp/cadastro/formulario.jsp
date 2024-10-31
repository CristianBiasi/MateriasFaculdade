<%@page import="org.libertas.PessoaDAO"%>
<%@page import="org.libertas.Pessoa"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		int idpessoa = Integer.parseInt(request.getParameter("id"));
	Pessoa p = new Pessoa();
	PessoaDAO pdao = new PessoaDAO();
	if (idpessoa > 0) {
		p = pdao.consultar(idpessoa);
	} else {
		p.setNome("");
		p.setTelefone("");
		p.setEmail("");
		p.setCidade("");
		p.setEndereco("");
		p.setCep("");
	}
	%>

	<form action="gravar.jsp" method="post">
		<input type="hidden" name="idpessoa" value="<%= p.getIdpessoa() %>">
		Nome:
		<input type="text" name="nome"  value="<%= p.getNome() %>"/>
		<br/><br/>
		Telefone:
		<input type="text" name="telefone"  value="<%= p.getTelefone() %>"/>
		<br/><br/>
		Email:
		<input type="text" name="email"  value="<%= p.getEmail() %>"/>
		<br/><br/>
		Cidade:
		<input type="text" name="cidade"  value="<%= p.getCidade() %>"/>
		<br/><br/>
		Endereço:
		<input type="text" name="endereco"  value="<%= p.getEndereco() %>"/>
		<br/><br/>
		CEP:
		<input type="text" name="cep"  value="<%= p.getCep() %>"/>
		<br/><br/>
		<input type="submit" value="Salvar">
	</form>
</body>
</html>