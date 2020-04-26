package it.dstech.modells;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Partita {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long idPartita;
	private String dataTime;
	private int numeroKill;
	private int numeroMorti;
	@ManyToOne
	private ArmaPreferita armaPreferita;
	private double rateo;
	@ManyToOne
	private Eroe eroeUsatoMaggiormente;
	private String note;
	private int posizionePodio;
	@ManyToOne
	private Utente u;
	public Partita() {

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
	public String getData() {
		return dataTime;
	}
	public void setData(String data) {
		this.dataTime = data;
	}
	public long getIdPartita() {
		return idPartita;
	}
	public void setIdPartita(long idPartita) {
		this.idPartita = idPartita;
	}
	public Utente getU() {
		return u;
	}
	public void setU(Utente u) {
		this.u = u;
	}
	
	

}
