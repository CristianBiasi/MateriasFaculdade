<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="p" class="org.libertas.Pessoa" scope="page"/>
	<jsp:useBean id="pdao" class="org.libertas.PessoaDAO" scope="page"/>
	<jsp:setProperty property="*" name="p"/>
	${p = pdao.consultar(p.idpessoa)}

	<form action="gravar.jsp" method="post">
		<input type="hidden" name="idpessoa" value="${p.idpessoa}">
		Nome:
		<input type="text" name="nome" value="${p.nome}"/>
		<br/><br/>
		Telefone:
		<input type="text" name="telefone" value="${p.telefone}"/>
		<br/><br/>
		Email:
		<input type="text" name="email" value="${p.email}"/>
		<br/><br/>
		Cidade:
		<input type="text" name="cidade" value="${p.cidade}"/>
		<br/><br/>
		Endereço:
		<input type="text" name="endereco" value="${p.endereco}"/>
		<br/><br/>
		CEP:
		<input type="text" name="cep" value="${p.cep}"/>
		<br/><br/>
		<input type="submit" value="Salvar">
	</form>

</body>
</html>