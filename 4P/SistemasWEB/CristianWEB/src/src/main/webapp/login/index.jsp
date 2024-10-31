<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            font-family: Arial, Helvetica, sans-serif;
            gap: 30px;
            
        }

        .formulario {
            padding: 20px;
            width: 200px;
            height: 150px;
            border: 1px solid black;
            border-radius: 8px;
        }
        
        form {
        	width: 200px;
        }
        
        .descricao {
        	font-size: 13px;
        }

        .form {
            margin-top: 5px;
            border-radius: 6px;
            padding: 3px;
            margin-bottom: 10px;
            width: 100%;
        }

        .botao {
            background-color: rgb(228, 62, 190);
            width: 80px;
            border-radius: 6px;
            border: 2px solid black;
            padding: 3px;
            cursor: pointer;
            margin-top: 10px;
        }
        .botao:hover {
            box-shadow: 0 2px 6px 0px rgba(0, 0, 0, 0.26);
        }

        .limpar {
            background-color: rgb(238, 170, 222);
            width: 80px;
            border-radius: 6px;
            border: 2px solid black;
            padding: 3px;
            cursor: pointer;
        }
        .limpar:hover {
            box-shadow: 0 2px 6px 0px rgba(0, 0, 0, 0.26);
        }
        
    </style>
</head>
<body>
	<h1>Login</h1>
	<div class="formulario">
		<form action="controle.jsp" method="post">
			<span class="descricao">Usuário </span>
			<input type="text" class="form" name="usuario" required>
			<br/>
			<span class="descricao">Senha </span>
			<input type="password" class="form" name="senha" required>
			<br/>
			<input class="botao" type="submit" value="Entrar">
		</form>

	</div>

</body>
</html>