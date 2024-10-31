package org.alunos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
public class AlunoDAO {

	public void salvar(Aluno a) {
		if (a.getIdaluno() > 0) {
			alterar(a);
		} else {
			inserir(a);
		}
	}
	
	public void criarTabela() {
	    Conexao con = new Conexao();
	    try {
	        String sql = "CREATE TABLE IF NOT EXISTS aluno ("
	                + "idaluno INT PRIMARY KEY AUTO_INCREMENT,"
	                + "`nome` TEXT,"
	                + "telefone TEXT,"
	                + "email TEXT,"
	                + "curso TEXT)";
	        PreparedStatement prep = con.getConnection().prepareStatement(sql);
	        prep.execute();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        con.desconecta();
	    }
	}

	
	public void inserir(Aluno a) {
		//lista.add(p);
		
		Conexao con = new Conexao();
		try {
			String sql = "INSERT INTO aluno (nome, telefone, email, curso)"
					+ "VALUES (?,?,?,?)";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, a.getNome());
			prep.setString(2, a.getTelefone());
			prep.setString(3, a.getEmail());
			prep.setString(4, a.getCurso());
			prep.execute();
			} catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
	}
	
	public LinkedList<Aluno> listar() {
		LinkedList<Aluno> lista = new LinkedList<Aluno>();
		Conexao con = new Conexao();
		try {
			String sql = "SELECT * FROM aluno";
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while (res.next()) {
				Aluno a = new Aluno();
				a.setIdaluno(res.getInt("idaluno"));
				a.setNome(res.getString("nome"));
				a.setTelefone(res.getString("telefone"));
				a.setEmail(res.getString("email"));
				a.setCurso(res.getString("curso"));
				lista.add(a);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		return lista;
	}
	
	public void alterar(Aluno a) {
		Conexao con = new Conexao();
		try {
			String sql = "UPDATE aluno SET "
					+ " nome = ?, telefone = ?, "
					+ "email = ?, curso = ?"
					+ "WHERE idaluno = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, a.getNome());
			prep.setString(2, a.getTelefone());
			prep.setString(3, a.getEmail());
			prep.setString(4, a.getCurso());
			prep.setInt(5, a.getIdaluno());
			prep.execute();
			} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	
	public void excluir(Aluno a) {
		Conexao con = new Conexao();
		try {
			String sql = "DELETE FROM aluno "
					+ "WHERE idaluno = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setInt(1, a.getIdaluno());
			prep.execute();
			} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	
	public Aluno consultar(int id) {
		Aluno a = new Aluno();
		Conexao con = new Conexao();
		try {
			String sql = "SELECT * FROM aluno WHERE idaluno = " + id;
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while (res.next()) {
				a.setIdaluno(res.getInt("idaluno"));
				a.setNome(res.getString("nome"));
				a.setTelefone(res.getString("telefone"));
				a.setEmail(res.getString("email"));
				a.setCurso(res.getString("curso"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		return a;
	}

}

