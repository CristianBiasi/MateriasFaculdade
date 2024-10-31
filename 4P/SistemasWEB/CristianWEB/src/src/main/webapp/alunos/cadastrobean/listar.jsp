<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listar</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>
    h1 {
    text-align:center;
    margin-bottom:10px;
    font-size: 32px;
    }
    
    .botoesTopo {
    display: flex;
    justify-content: end;
    align-items:center;
    gap:10px;
    margin-bottom:20px;
    }
    
    .conteudoPagina {
    margin: 20px;
    }
</style>
</head>
<body>
	<jsp:useBean id="adao" scope="page" class="org.alunos.AlunoDAO"/>
	
	<div class="conteudoPagina">
	
	<h1>Cadastro de alunos</h1>
		<div class="botoesTopo">
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='index.jsp';">
				Página inicial
			</button>
			<button type="button" class="btn btn-primary" onclick="window.location.href='formulario.jsp?idaluno=0';">
				Novo aluno
			</button>
		</div>
	
	<table class="table table-striped">
		<th>Matrícula</th>
		<th>Nome</th>
		<th>Telefone</th>
		<th>Email</th>
		<th>Curso</th>
		<th></th>
		<th></th>
		
		<c:forEach var="a" items="${adao.listar()}">
			<tr>
				<td>${a.idaluno}</td>
				<td>${a.nome}</td>
				<td>${a.telefone}</td>
				<td>${a.email}</td>
				<td>${a.curso}</td>
				<td> 
					<button type="button" class="btn btn-primary" 
        				onclick="window.location.href='formulario.jsp?idaluno=${a.idaluno}';">
    					<i class='bi bi-pencil'></i>
					</button> </td>
<td>
					<button type="button" class="btn btn-danger" 
					        onclick="window.location.href='excluir.jsp?idaluno=${a.idaluno}';">
					    <i class='bi bi-trash'></i>
					</button> </td>
			</tr>
		</c:forEach>
	</table>
	
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	
</body>
</html>