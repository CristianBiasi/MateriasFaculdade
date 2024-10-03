<%@page import="org.libertas.Produto"%>
<%@page import="org.libertas.ProdutoDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    ProdutoDao dao = new ProdutoDao();
    Produto p = new Produto();
    p.setId(Integer.parseInt(request.getParameter("id")));
    dao.excluir(p);
    response.sendRedirect("listar.jsp");
%>
