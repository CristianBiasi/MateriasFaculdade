<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gravar Produto</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <jsp:useBean id="p" class="org.libertas.Produto" scope="page"/>
        <jsp:useBean id="pdao" class="org.libertas.ProdutoDao" scope="page"/>
        <jsp:setProperty property="*" name="p"/>

        <%
            pdao.salvar(p); 
        %>

        <div class="alert alert-success" role="alert">
            Produto salvo com sucesso!
        </div>
        <a class="btn btn-primary" href="index.jsp">OK</a>
    </div>
</body>
</html>
