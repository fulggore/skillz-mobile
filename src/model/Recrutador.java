package model;

public class Recrutador {
	private String nome;
	private String email;
	private String cnpj;
	
	public Recrutador() {
		
	}
	

	public Recrutador(String nome, String email, String cnpj, String empresa, String senha, String telefone) {
		super();
		this.nome = nome;
		this.email = email;
		this.cnpj = cnpj;
		this.empresa = empresa;
		this.senha = senha;
		this.telefone = telefone;
	}



	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCnpj() {
		return cnpj;
	}
	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	public String getEmpresa() {
		return empresa;
	}
	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	private String empresa;
	private String senha;
	private String telefone;
}
