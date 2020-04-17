package it.dstech.modells;

public class Partita {
	
	private int numeroKill;
	private int numeroMorti;
	private ArmaPreferita armaPreferita;
	private double rateo;
	private Eroe eroeUsatoMaggiormente;
	private String note;
	private int posizionePodio;
	public Partita(int numeroKill, int numeroMorti, ArmaPreferita armaPreferita, double rateo,
			Eroe eroeUsatoMaggiormente, String note, int posizionePodio) {
		super();
		this.numeroKill = numeroKill;
		this.numeroMorti = numeroMorti;
		this.armaPreferita = armaPreferita;
		this.rateo = rateo;
		this.eroeUsatoMaggiormente = eroeUsatoMaggiormente;
		this.note = note;
		this.posizionePodio = posizionePodio;
	}
	public int getNumeroKill() {
		return numeroKill;
	}
	public void setNumeroKill(int numeroKill) {
		this.numeroKill = numeroKill;
	}
	public int getNumeroMorti() {
		return numeroMorti;
	}
	public void setNumeroMorti(int numeroMorti) {
		this.numeroMorti = numeroMorti;
	}
	public ArmaPreferita getArmaPreferita() {
		return armaPreferita;
	}
	public void setArmaPreferita(ArmaPreferita armaPreferita) {
		this.armaPreferita = armaPreferita;
	}
	public double getRateo() {
		return rateo;
	}
	public void setRateo(double rateo) {
		this.rateo = rateo;
	}
	public Eroe getEroeUsatoMaggiormente() {
		return eroeUsatoMaggiormente;
	}
	public void setEroeUsatoMaggiormente(Eroe eroeUsatoMaggiormente) {
		this.eroeUsatoMaggiormente = eroeUsatoMaggiormente;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getPosizionePodio() {
		return posizionePodio;
	}
	public void setPosizionePodio(int posizionePodio) {
		this.posizionePodio = posizionePodio;
	}
	
	

}
