<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Excluir Registro</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <jsp:useBean id="p" class="org.libertas.Produto" scope="page"/>
        <jsp:useBean id="pdao" class="org.libertas.ProdutoDao" scope="page"/>
        <jsp:setProperty property="*" name="p"/>

        <% 
            String idproduto = request.getParameter("idproduto");
            if (idproduto != null) {
                p.setId(Integer.parseInt(idproduto));  // Alteração para 'idproduto'
                pdao.excluir(p); 
        %>

        <div class="alert alert-success" role="alert">
            Produto excluído com sucesso!
        </div>
        <a class="btn btn-primary" href="index.jsp">OK</a>
        
        <% } else { %>
        <div class="alert alert-danger" role="alert">
            Erro ao tentar excluir o produto!
        </div>
        <a class="btn btn-primary" href="index.jsp">Voltar</a>
        <% } %>
    </div>
</body>
</html>
