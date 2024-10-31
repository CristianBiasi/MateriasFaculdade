<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Churrasco</title>
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
            height: 200px;
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
	<h1>Churrasco</h1>
	<div class="formulario">
		<form action="resposta4.jsp" method="post">
			<span class="descricao">Homens</span>
			<input type="number" class="form" name="homens" required>
			<br/>
			<span class="descricao">Mulheres </span>
			<input type="number" class="form" name="mulheres" required>
			<br/>
			<span class="descricao">Crianças </span>
			<input type="number" class="form" name="criancas" required>
			<br/>
			<input class="botao" type="submit" value="Ok">
		</form>

	</div>

</body>
</html>