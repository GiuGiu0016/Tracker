package it.dstech.controller.admin;

import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import it.dstech.modells.Eroe;
import it.dstech.service.GestioneDB;

@MultipartConfig
@WebServlet(name = "addEroe",urlPatterns = "/addEroe")
public class AggiungiEroe extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setAttribute("messaggio", "Errore, non si può accedere manulmente alla pagina.");
	req.getRequestDispatcher("home.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManagerFactory emf = (EntityManagerFactory) req.getServletContext().getAttribute("emf");
		GestioneDB gest = new GestioneDB();
		
		Eroe e = creaEroe(req);
		
		gest.registraEroe(emf, e);
		
		req.setAttribute("messaggio", "Eroe aggiunto correttamente...");
		req.getRequestDispatcher("MenuAdmin.jsp").forward(req, resp);
	}

	private Eroe creaEroe(HttpServletRequest req) throws IOException, ServletException {
		String nome = req.getParameter("nome");
		String potere = req.getParameter("potere");
		String fazione = req.getParameter("fazione");
		Part imagePart =  req.getPart("image");
		String image = convertParttoString(imagePart);
		Eroe e = new Eroe();
		
		e.setNome(nome);
		e.setPotereEroe(potere);
		e.setFazione(fazione);
		e.setImage(image);
		return e;
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
