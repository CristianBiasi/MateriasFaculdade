<%@page import="org.libertas.Produto"%>
<%@page import="org.libertas.ProdutoDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Formulário de Produto</title>
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Cadastro de Produto</h1>
        
        <%
            ProdutoDao dao = new ProdutoDao();
            Produto p = new Produto();
            int id = Integer.parseInt(request.getParameter("id"));
            if (id > 0) {
                p = dao.consultar(id);
            }
        %>

        <form action="gravar.jsp" method="post">
            <input type="hidden" name="id" value="<%= p.getId() %>">
            <div class="form-group">
                <label for="nome">Nome</label>
                <input type="text" class="form-control" id="nome" name="nome" value="<%= p.getNome() %>">
            </div>
            <div class="form-group">
                <label for="preco">Preço</label>
                <input type="text" class="form-control" id="preco" name="preco" value="<%= p.getPreco() %>">
            </div>
            <div class="form-group">
                <label for="descricao">Descrição</label>
                <input type="text" class="form-control" id="descricao" name="descricao" value="<%= p.getDescricao() %>">
            </div>
            <div class="form-group">
                <label for="quantidade">Quantidade</label>
                <input type="text" class="form-control" id="quantidade" name="quantidade" value="<%= p.getQuantidade() %>">
            </div>
            <button type="submit" class="btn btn-success">Salvar</button>
            <a href="listar.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
