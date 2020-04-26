package it.dstech.controllerutenti;

import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import javax.mail.MessagingException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import it.dstech.modells.Utente;
import it.dstech.service.EmailUtility;
import it.dstech.service.GestioneDB;

@WebServlet(name = "register", urlPatterns = "/register")
@MultipartConfig
public class RegistraUtente extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setAttribute("messaggio", "Errore, non si può accedere manulmente alla pagina.");
	req.getRequestDispatcher("home.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManagerFactory emf = (EntityManagerFactory) getServletContext().getAttribute("emf");
		GestioneDB gest = new GestioneDB();
		
		String username = req.getParameter("username");
		if(gest.mappaUtenti(emf).containsKey(username)) {
			req.setAttribute("messaggio", "Errore.Mi spiace prova a cambiare il tuo Username...");
			req.getRequestDispatcher("Registrati.jsp").forward(req, resp);	
		}else {
		Utente u = RegistrazioneUtente(req, emf, gest, username);
		SendEmail(u.getEmail());		
		req.setAttribute("messaggio", "Utente registrato correttamente, ora puoi controllare l'email.");
		req.getRequestDispatcher("home.jsp").forward(req, resp);
		}
	}

	private Utente RegistrazioneUtente(HttpServletRequest req, EntityManagerFactory emf, GestioneDB gest,String username)
			throws IOException, ServletException {
		String nome = req.getParameter("username");
		String cognome = req.getParameter("cognome");
		String email = req.getParameter("email");
		int eta = Integer.parseInt(req.getParameter("eta"));
		String password = req.getParameter("password");
		Part image = req.getPart("image");
		String imageString = convertParttoString(image);
		Utente u = creaUtente(username, nome, cognome, email, eta, password, imageString);
		gest.registraUtenti(emf, u);
		return u;
	}

	private Utente creaUtente(String username, String nome, String cognome, String email, int eta, String password,
			String imageString) {
		Utente u = new Utente();
		u.setUsername(username);
		u.setNome(nome);
		u.setCognome(cognome);
		u.setEmail(email);
		u.setEta(eta);
		u.setPass(password);
		u.setTipo("Cliente");
		u.setImageUtente(imageString);
		return u;
	}
	
	private void SendEmail(String email) {
		try {
			EmailUtility.sendEmail(email, "Registrazione", "Benveenuto nel notro sito buona continuaazione...");
		} catch (MessagingException | IOException e) {
			e.printStackTrace();
		}
	}

	private String convertParttoString(Part image) throws IOException {
		InputStream imageistream = image.getInputStream();
		byte[] imagebytes = new byte[(int) image.getSize()];
		imageistream.read(imagebytes,0,imagebytes.length);
		imageistream.close();
		String imageString = Base64.getEncoder().encodeToString(imagebytes);
		return imageString;
	}
	
}
