package org.libertas;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    private Connection conexao;

    public Conexao() {
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conexao = DriverManager.getConnection(
					"jdbc:mysql://localhost:8050/"
					+ "crud_produtos?verifyServerCertificate=false&useSSL=false",
					"root", "root");
			} catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return conexao;
    }

    public void desconecta() {
        try {
            conexao.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
