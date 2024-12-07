package org.libertas;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class CidadeDAO {
	private static LinkedList<Cidade> lista = new LinkedList<Cidade>();
	Conexao con = new Conexao();
	Retorno r = new Retorno();
	
	public boolean criarTabela() {
		
		String sql = "CREATE TABLE IF NOT EXISTS cidades( "
		           + "id INT PRIMARY KEY AUTO_INCREMENT, "
		           + "nome VARCHAR(255), "
		           + "estado VARCHAR(50), "
		           + "pais VARCHAR(50), "
		           + "cep VARCHAR(10), "
		           + "populacao float)";

	    try {
	        con = new Conexao();
	        PreparedStatement sta = con.getCon().prepareStatement(sql);
	        sta.executeUpdate(sql);
	        System.out.println("Tabela criada ou já existente.");
	        return true;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    } finally {
	        con.desconecta();
	    }
	}
	
	public Retorno salvar(Cidade p) {
		if(p.getId() > 0) {
			return alterar(p);
		}else {
			return inserir(p);
		}
	}
	
	public Retorno inserir(Cidade c) {
		
		try {
			String sql = "INSERT INTO cidades (nome, estado, pais, cep, populacao) VALUES "
					+ "(?, ?, ?, ?, ?);";
			
			PreparedStatement prep = con.getCon().prepareStatement(sql);
			prep.setString(1, c.getNome());
			prep.setString(2, c.getEstado());
			prep.setString(3, c.getPais());
			prep.setString(4, c.getCep());
			prep.setString(5, c.getPopulacao());
			
			prep.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			r.setSucesso(false);
		}finally {
			r.setMensagem((r.getSucesso() ? "Cidade inserida com sucesso!" : "Falha ao inserir cidade!"));
			con.desconecta();
		}
		return r;
	}
	
	public LinkedList<Cidade> listar(String pesquisa) {
		lista = new LinkedList<Cidade>();
		try {
			String sql = "SELECT * FROM cidades WHERE nome like ? ORDER BY nome";
			PreparedStatement sta = con.getCon().prepareStatement(sql);
			sta.setString(1, "%"+pesquisa+"%");
			ResultSet res = sta.executeQuery();
			while(res.next()) {
				Cidade p = new Cidade();
				p.setId(res.getInt("id"));
				p.setNome(res.getString("nome"));
				p.setEstado(res.getString("estado"));
				p.setPais(res.getString("pais"));
				p.setCep(res.getString("cep"));
				p.setPopulacao(res.getString("populacao"));
				lista.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return lista;
	}
	
	public Retorno alterar(Cidade p) {
		try {
			String sql = "UPDATE cidades SET nome = ?, estado = ?, pais = ?, cep = ?, populacao = ? WHERE id = ?";
			
			PreparedStatement prep = con.getCon().prepareStatement(sql);
			prep.setString(1, p.getNome());
			prep.setString(2, p.getEstado());
			prep.setString(3, p.getPais());
			prep.setString(4, p.getCep());
			prep.setString(5, p.getPopulacao());
			prep.setInt(6, p.getId());
			
			prep.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			r.setSucesso(false);
		}finally {
			r.setMensagem((r.getSucesso() ? "Cidade alterada com sucesso!" : "Falha ao alterar cidade!"));
			con.desconecta();
		}
		return r;
	}
	
	public Retorno excluir(int id) {
		try {
			String sql = "DELETE FROM cidades WHERE id = ?;";
			
			PreparedStatement prep = con.getCon().prepareStatement(sql);
			prep.setInt(1, id);
			
			prep.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			r.setSucesso(false);
		}finally {
			r.setMensagem((r.getSucesso() ? "Cidade excluída com sucesso!" : "Falha ao excluír cidade!"));
			con.desconecta();
		}
		return r;
	}
	
	public Cidade consultar(int id) {
		Cidade p = new Cidade();
		try {
			String sql = "SELECT * FROM cidades WHERE id = "+id+";";
			Statement sta = con.getCon().createStatement();
			ResultSet res = sta.executeQuery(sql);
			if(res.next()) {
				p.setId(res.getInt("id"));
				p.setNome(res.getString("nome"));
				p.setEstado(res.getString("estado"));
				p.setPais(res.getString("pais"));
				p.setCep(res.getString("cep"));
				p.setPopulacao(res.getString("populacao"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		con.desconecta();
		return p;
	}
}
