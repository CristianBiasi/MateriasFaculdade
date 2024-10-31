<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">

<title>Formulário</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>

	body {
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	
	}
	.conteudoTela {
		width: 550px;
		background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 2px 6px 0px rgba(0, 0, 0, 0.15);
		
	
	}
	h1 {
		text-align:center;
		margin-bottom: 20px;
		font-size: 32px;
	}
	
	.botoes {
	display: flex;
	justify-content: end;
	align-items: center;
	gap:10px;
	margin-top:20px;
	}

</style>
</head>
<body>

	<jsp:useBean id="a" class="org.alunos.Aluno" scope="page"/>
	<jsp:useBean id="adao" class="org.alunos.AlunoDAO" scope="page"/>
	<jsp:setProperty property="*" name="a"/>
	${a = adao.consultar(a.idaluno)}
	
	<%
	// titulo
	String tituloTela = "Novo cadastro de aluno";
	if (a.getIdaluno() > 0) {
		tituloTela = "Atualizar cadastro de aluno";
	} else {
		tituloTela = "Novo cadastro de aluno";
	}
	%>
	
	
	<div class="conteudoTela">
	
	<h1><%= tituloTela %></h1>
	
	<form action="gravar.jsp" method="post" autocomplete="off">
			  <input type="hidden" name="idaluno" value="${a.idaluno}">
			  <div class="form-group">
			    <label for="inputNome">Nome</label>
			    <input type="text" class="form-control" id="inputNome" name="nome" placeholder="Digite o nome" value="${a.nome}" required>
			  </div>
			  <div class="form-group">
			    <label for="inputTelefone">Telefone</label>
			    <input type="text" class="form-control" id="inputTelefone" name="telefone" placeholder="Digite o telefone" value="${a.telefone}" required maxlength="11">
			  </div>
			  <div class="form-group">
			    <label for="inputEmail">E-mail</label>
			    <input type="email" class="form-control" id="inputEmail" name="email" placeholder="Digite o e-mail" value="${a.email}" required>
			  </div>
			  <div class="form-group">
			    <label for="inputCurso">Curso</label>
			    <input type="text" class="form-control" id="inputCurso" name="curso" placeholder="Digite o curso" value="${a.curso}" required>
			  </div>
			  <div class="botoes">
				<button type="button" class="btn btn-outline-primary" onclick="window.location.href='index.jsp';">
					Página inicial
				</button>
			  	<button type="submit" class="btn btn-primary">Salvar cadastro</button>
		
		</div>
		</form>
	</div>
	
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>