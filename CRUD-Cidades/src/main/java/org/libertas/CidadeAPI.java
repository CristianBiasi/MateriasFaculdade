package org.libertas;

import java.io.IOException;
import java.util.stream.Collectors;

import java.io.IOException;
import java.util.stream.Collectors;
import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class CidadeAPI
 */
@WebServlet("/CidadeAPI/*")
public class CidadeAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CidadeAPI() {
        super();
        //CidadeDAO cdao = new CidadeDAO();
        //cdao.criarTabela();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pesquisa = request.getParameter("pesquisa");
		
		Gson gson = new Gson();
		CidadeDAO cdao = new CidadeDAO();
		
		Integer id = null;
		try {
			id = Integer.parseInt(request.getPathInfo().substring(1));
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		
		response.setHeader("content-type", "application/json");
		if(id == null) {
			response.getWriter().print(gson.toJson(cdao.listar(pesquisa)));
		}else {
			response.getWriter().print(gson.toJson(cdao.consultar(id)));
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String body = request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
		
		Gson gson = new Gson();
		Cidade c = gson.fromJson(body, Cidade.class);
		CidadeDAO cdao = new CidadeDAO();
		
		response.setHeader("content-type", "application/json");
		response.getWriter().print(gson.toJson(cdao.inserir(c)));
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String body = request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
		
		Gson gson = new Gson();
		CidadeDAO cdao = new CidadeDAO();
		Cidade c = gson.fromJson(body, Cidade.class);
		
		response.setHeader("content-type", "application/json");
		response.getWriter().print(gson.toJson(cdao.alterar(c)));
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CidadeDAO cdao = new CidadeDAO();
		Gson gson = new Gson();
		
		Integer id = null;
		try {
			id = Integer.parseInt(request.getPathInfo().substring(1));
		}catch (Exception e) {
			String resp = "ID obrigatório!";
			response.getWriter().print(resp);
			return;
		}
		
		response.setHeader("content-type", "application/json");
		response.getWriter().print(gson.toJson(cdao.excluir(id)));
	}
}
