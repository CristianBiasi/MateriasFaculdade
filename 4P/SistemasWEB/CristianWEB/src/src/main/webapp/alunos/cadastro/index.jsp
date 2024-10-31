<%@page import="org.alunos.AlunoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Página inicial</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>
	body {
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		background-color: #f9f9f9;
	}
	
	.conteudoTela {
		background-color: white;
		padding: 20px;
		border-radius: 10px;
		box-shadow: 0 2px 6px 0px rgba(0, 0, 0, 0.15);
		width: 550px;
	}
	
	h1 {
		margin-bottom:20px;
		text-align: center;
		font-size: 32px;
	}
	
	.botoes {
	    display: flex;
	    flex-direction: column;
		gap: 20px;
	}

</style>
</head>
<body>

	<div class="conteudoTela">
		<h1>Página inicial</h1>
		
		<div class="botoes">
			<button type="button" class="btn btn-primary" onclick="window.location.href='formulario.jsp?id=0';">
				Novo aluno
			</button>
			<button type="button" class="btn btn-primary" onclick="window.location.href='listar.jsp';">
				Listar alunos
			</button>
		</div>
	
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>