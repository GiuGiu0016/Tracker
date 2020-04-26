package it.dstech.service;

import java.util.HashMap;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.annotation.MultipartConfig;

import org.w3c.dom.ls.LSInput;

import it.dstech.modells.ArmaPreferita;
import it.dstech.modells.Eroe;
import it.dstech.modells.Utente;

@MultipartConfig
public class GestioneDB {

	public void registraUtenti(EntityManagerFactory emf, Utente u) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(u);
		em.getTransaction().commit();
	}
	
	public void registraEroe(EntityManagerFactory emf, Eroe e) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(e);
		em.getTransaction().commit();
	}
	
	public List<Utente> listaUtenti(EntityManagerFactory emf) {
		EntityManager em =  emf.createEntityManager();
		String query = "SELECT u FROM Utente u ";
		List<Utente> listaUtenti = em.createQuery(query, Utente.class).getResultList();
		return listaUtenti;
	}
	
	public HashMap<String,Utente> mappaUtenti(EntityManagerFactory emf) {	
		HashMap<String , Utente> mappaUtenti = new HashMap<>();
		for (Utente utente : listaUtenti(emf)) {
			mappaUtenti.put(utente.getUsername(), utente);
		}
		return mappaUtenti;
	}
	
	public List<ArmaPreferita> listaArmi(EntityManagerFactory emf) {
		EntityManager em =  emf.createEntityManager();
		String query = "SELECT a FROM ArmaPreferita a ";
		List<ArmaPreferita> listaArmi = em.createQuery(query, ArmaPreferita.class).getResultList();
		return listaArmi;
	}
	
	public HashMap<String , ArmaPreferita> mappaArma(EntityManagerFactory emf){
		HashMap<String , ArmaPreferita> mappaArmi = new HashMap<>();
		for (ArmaPreferita a : listaArmi(emf)) {
			mappaArmi.put(a.getNome(),a);
		}
		return mappaArmi;
	}
	
	public List<Eroe> listaEroi(EntityManagerFactory emf) {
		EntityManager em =  emf.createEntityManager();
		String query = "SELECT e FROM Eroe e ";
		List<Eroe> listaEroi = em.createQuery(query, Eroe.class).getResultList();
		return listaEroi;
	}
	
	public HashMap<String , Eroe> mappaEroe(EntityManagerFactory emf){
		HashMap<String , Eroe> mappaEroe = new HashMap<>();
		for (Eroe e : listaEroi(emf)) {
			mappaEroe.put(e.getNome(),e);
		}
		return mappaEroe;
	}
	
	
	
}
