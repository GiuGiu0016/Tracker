package it.dstech.modells;

public class ArmaPreferita {
	
	private String nome;
	private int danno;
	private int colpiAlSecondo;
	public ArmaPreferita(String nome, int danno, int colpiAlSecondo) {
		super();
		this.nome = nome;
		this.danno = danno;
		this.colpiAlSecondo = colpiAlSecondo;
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
