package it.dstech.modells;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ArmaPreferita {
	
	@Id
	private String nome;
	private int danno;
	private int colpiAlSecondo;
	public ArmaPreferita() {
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getDanno() {
		return danno;
	}
	public void setDanno(int danno) {
		this.danno = danno;
	}
	public int getColpiAlSecondo() {
		return colpiAlSecondo;
	}
	public void setColpiAlSecondo(int colpiAlSecondo) {
		this.colpiAlSecondo = colpiAlSecondo;
	}

	
	
}
