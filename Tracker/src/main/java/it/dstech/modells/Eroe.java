package it.dstech.modells;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Eroe {
	@Id
	private String nome;
	private String image;
	private String potereEroe;
	private String fazione;
	
	public Eroe() {
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPotereEroe() {
		return potereEroe;
	}
	public void setPotereEroe(String potereEroe) {
		this.potereEroe = potereEroe;
	}
	public String getFazione() {
		return fazione;
	}
	public void setFazione(String fazione) {
		this.fazione = fazione;
	}

	
}
