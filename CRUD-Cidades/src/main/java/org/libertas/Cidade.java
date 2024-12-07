package org.libertas;

public class Cidade {
	private int id;
	private String nome, estado, pais, cep, populacao;
	
	public Cidade() {
		id = 0;
		nome = "";
		estado = "";
		pais = ""; 
		cep = ""; 
		populacao = "";
	}
	
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getEstado() {
		return estado;
	}


	public void setEstado(String estado) {
		this.estado = estado;
	}


	public String getPais() {
		return pais;
	}


	public void setPais(String pais) {
		this.pais = pais;
	}


	public String getCep() {
		return cep;
	}


	public void setCep(String cep) {
		this.cep = cep;
	}


	public String getPopulacao() {
		return populacao;
	}


	public void setPopulacao(String populacao) {
		this.populacao = populacao;
	}


	@Override
	public String toString() {
		return "";
	}
	
}
