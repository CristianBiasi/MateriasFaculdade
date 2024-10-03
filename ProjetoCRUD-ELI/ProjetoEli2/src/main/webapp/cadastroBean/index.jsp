<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.libertas.ProdutoDao" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listagem de Produtos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <jsp:useBean id="pdao" class="org.libertas.ProdutoDao" scope="page"/>
        
        <h2>Listagem de Produtos</h2>
        <a href="formulario.jsp?idproduto=0" class="btn btn-primary mb-3">Adicionar Novo Produto</a>
        
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>Nome</th>
                    <th>Preço</th>
                    <th>Descrição</th>
                    <th>Quantidade</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="p" items="${pdao.listar()}">
                    <tr>
                        <td>${p.nome}</td>
                        <td>${p.preco}</td>
                        <td>${p.descricao}</td>
                        <td>${p.quantidade}</td>
                        <td>
                            <a class="btn btn-warning btn-sm" href="formulario.jsp?idproduto=${p.id}">Alterar</a>
                            <a class="btn btn-danger btn-sm" href="excluir.jsp?idproduto=${p.id}">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
