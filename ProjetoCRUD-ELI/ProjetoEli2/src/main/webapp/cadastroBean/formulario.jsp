<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="org.libertas.ProdutoDao" %>
<%@ page import="org.libertas.Produto" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de Produto</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <jsp:useBean id="pdao" class="org.libertas.ProdutoDao" scope="page"/>
        <jsp:useBean id="p" class="org.libertas.Produto" scope="page"/>
        <jsp:setProperty property="*" name="p"/>

        <%
            String idproduto = request.getParameter("idproduto");
            if (idproduto != null && !idproduto.equals("0")) {
                p = pdao.consultar(Integer.parseInt(idproduto));
            }
        %>

        <h2>Preencha os dados do Produto</h2>
        <form action="gravar.jsp" method="post">
            <input type="hidden" name="idproduto" value="${p.id}"/>
            <div class="form-group">
                <label for="nome">Nome:</label>
                <input type="text" class="form-control" name="nome" value="${p.nome}"/>
            </div>
            <div class="form-group">
                <label for="preco">Preço:</label>
                <input type="text" class="form-control" name="preco" value="${p.preco}"/>
            </div>
            <div class="form-group">
                <label for="descricao">Descrição:</label>
                <input type="text" class="form-control" name="descricao" value="${p.descricao}"/>
            </div>
            <div class="form-group">
                <label for="quantidade">Quantidade:</label>
                <input type="number" class="form-control" name="quantidade" value="${p.quantidade}"/>
            </div>
            <button type="submit" class="btn btn-primary">Salvar</button>
        </form>
    </div>
</body>
</html>
