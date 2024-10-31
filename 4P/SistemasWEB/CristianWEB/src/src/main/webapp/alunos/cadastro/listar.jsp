<%@page import="org.alunos.Aluno"%>
<%@page import="org.alunos.AlunoDAO"%>
<%@page import="org.libertas.Pessoa"%>
<%@page import="org.libertas.PessoaDAO"%>
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
	<div class="conteudoPagina">
		<h1>Cadastro de alunos</h1>
		<div class="botoesTopo">
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='index.jsp';">
				Página inicial
			</button>
			<button type="button" class="btn btn-primary" onclick="window.location.href='formulario.jsp?id=0';">
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
			
			<%
				AlunoDAO dao = new AlunoDAO();
				for (Aluno a : dao.listar()) {
					out.print("<tr>");
					out.print("<td>" + a.getIdaluno() + "</td>");
					out.print("<td>" + a.getNome() + "</td>");
					out.print("<td>" + a.getTelefone() + "</td>");
					out.print("<td>" + a.getEmail() + "</td>");
					out.print("<td>" + a.getCurso() + "</td>");
					out.print("<td>");
					out.print("<a href='formulario.jsp?id=" + a.getIdaluno() + "' class='btn btn-primary'>");
					out.print("<i class='bi bi-pencil'></i></a>");
					out.print("</td>");
	
					out.print("<td>");
					out.print("<a href='excluir.jsp?id=" + a.getIdaluno() + "' class='btn btn-danger'>");
					out.print("<i class='bi bi-trash'></i></a>");
					out.print("</td>");
				}
			%>
		</table>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>