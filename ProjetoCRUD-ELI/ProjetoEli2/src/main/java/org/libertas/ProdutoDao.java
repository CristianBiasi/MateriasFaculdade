package org.libertas;

import java.sql.*;
import java.util.LinkedList;

public class ProdutoDao {
    public void inserir(Produto p) {
        Conexao con = new Conexao();
        try {
            String sql = "INSERT INTO produto (nome, preco, descricao, quantidade) VALUES (?, ?, ?, ?)";
            PreparedStatement prep = con.getConnection().prepareStatement(sql);
            prep.setString(1, p.getNome());
            prep.setDouble(2, p.getPreco());
            prep.setString(3, p.getDescricao());
            prep.setInt(4, p.getQuantidade());
            prep.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            con.desconecta();
        }
    }

    public void alterar(Produto p) {
        Conexao con = new Conexao();
        try {
            String sql = "UPDATE produto SET nome = ?, preco = ?, descricao = ?, quantidade = ? WHERE id = ?";
            PreparedStatement prep = con.getConnection().prepareStatement(sql);
            prep.setString(1, p.getNome());
            prep.setDouble(2, p.getPreco());
            prep.setString(3, p.getDescricao());
            prep.setInt(4, p.getQuantidade());
            prep.setInt(5, p.getId());
            prep.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            con.desconecta();
        }
    }

    public void excluir(Produto p) {
        Conexao con = new Conexao();
        try {
            String sql = "DELETE FROM produto WHERE id = ?";
            PreparedStatement prep = con.getConnection().prepareStatement(sql);
            prep.setInt(1, p.getId());
            prep.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            con.desconecta();
        }
    }

    public LinkedList<Produto> listar() {
        LinkedList<Produto> lista = new LinkedList<>();
        Conexao con = new Conexao();
        try {
            String sql = "SELECT * FROM produto ORDER BY nome";
            Statement sta = con.getConnection().createStatement();
            ResultSet res = sta.executeQuery(sql);
            while (res.next()) {
                Produto p = new Produto();
                p.setId(res.getInt("id"));
                p.setNome(res.getString("nome"));
                p.setPreco(res.getDouble("preco"));
                p.setDescricao(res.getString("descricao"));
                p.setQuantidade(res.getInt("quantidade"));
                lista.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            con.desconecta();
        }
        return lista;
    }

    public Produto consultar(int id) {
        Produto p = new Produto();
        Conexao con = new Conexao();
        try {
            String sql = "SELECT * FROM produto WHERE id = ?";
            PreparedStatement prep = con.getConnection().prepareStatement(sql);
            prep.setInt(1, id);
            ResultSet res = prep.executeQuery();
            if (res.next()) {
                p.setId(res.getInt("id"));
                p.setNome(res.getString("nome"));
                p.setPreco(res.getDouble("preco"));
                p.setDescricao(res.getString("descricao"));
                p.setQuantidade(res.getInt("quantidade"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            con.desconecta();
        }
        return p;
    }
    
    public void salvar(Produto p) {
        if (p.getId() == 0) {
            inserir(p); // Se id for 0, insere um novo produto
        } else {
            alterar(p); // Se id existir, atualiza o produto
        }
    }

}
