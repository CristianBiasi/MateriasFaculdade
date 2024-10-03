<%@page import="org.libertas.Produto"%>
<%@page import="org.libertas.ProdutoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Listar Produtos</title>
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Lista de Produtos</h1>
        <a href="formulario.jsp?id=0" class="btn btn-primary mt-3">Novo Produto</a>
        <table class="table mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Preço</th>
                    <th>Descrição</th>
                    <th>Quantidade</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ProdutoDao dao = new ProdutoDao();
                    for (Produto p : dao.listar()) {
                        out.print("<tr>");
                        out.print("<td>" + p.getId() + "</td>");
                        out.print("<td>" + p.getNome() + "</td>");
                        out.print("<td>" + p.getPreco() + "</td>");
                        out.print("<td>" + p.getDescricao() + "</td>");
                        out.print("<td>" + p.getQuantidade() + "</td>");
                        out.print("<td>");
                        out.print("<a href='formulario.jsp?id=" + p.getId() + "' class='btn btn-warning btn-sm'>Alterar</a>");
                        out.print("<a href='excluir.jsp?id=" + p.getId() + "' class='btn btn-danger btn-sm'>Excluir</a>");
                        out.print("</td>");
                        out.print("</tr>");
                    }
                %>
            </tbody>
        </table>
        <a href="index.jsp" class="btn btn-secondary">Voltar</a>
    </div>
</body>
</html>
