<%@page import="org.libertas.Produto"%>
<%@page import="org.libertas.ProdutoDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    ProdutoDao dao = new ProdutoDao();
    Produto p = new Produto();

    p.setId(Integer.parseInt(request.getParameter("id")));
    p.setNome(request.getParameter("nome"));
    p.setPreco(Double.parseDouble(request.getParameter("preco")));
    p.setDescricao(request.getParameter("descricao"));
    p.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));

    if (p.getId() == 0) {
        dao.inserir(p);
    } else {
        dao.alterar(p);
    }
    
    response.sendRedirect("listar.jsp");
%>
