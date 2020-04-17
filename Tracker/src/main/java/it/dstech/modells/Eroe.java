package it.dstech.modells;

public class Eroe {
	
	private String nome;
	private String image;
	private String potereEroe;
	
	public Eroe(String nome, String image, String potereEroe) {
		super();
		this.nome = nome;
		this.image = image;
		this.potereEroe = potereEroe;
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

	
}
