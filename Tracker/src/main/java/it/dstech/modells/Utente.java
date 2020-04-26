package it.dstech.modells;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Utente {
	
	@Id
	private String username;
	private String nome;
	private String cognome;
	private int eta;
	private String email;
	private String pass;
	private String Tipo;
	private String imageUtente;
	
	
	
	public Utente() {
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public int getEta() {
		return eta;
	}
	public void setEta(int eta) {
		this.eta = eta;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTipo() {
		return Tipo;
	}
	public void setTipo(String tipo) {
		Tipo = tipo;
	}
	public String getImageUtente() {
		return imageUtente;
	}
	public void setImageUtente(String inputStream) {
		this.imageUtente = inputStream;
	}
	
	

}
