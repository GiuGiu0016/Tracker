package it.dstech.controllerpartite;

import java.io.IOException;

import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.dstech.modells.ArmaPreferita;
import it.dstech.modells.Eroe;
import it.dstech.service.GestioneDB;

@WebServlet(name = "addPartita",urlPatterns = "/addPartita")
public class AddPartita extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setAttribute("messaggio", "Errore, non si può accedere manulmente alla pagina.");
	req.getRequestDispatcher("home.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManagerFactory emf = (EntityManagerFactory) req.getServletContext().getAttribute("emf");
		GestioneDB gest = new GestioneDB();
		
		String note = req.getParameter("memo");
		String dataTime = req.getParameter("data");
		int kill = Integer.parseInt(req.getParameter("kill"));
		int morti = Integer.parseInt(req.getParameter("morti"));
		int posizionamento = Integer.parseInt(req.getParameter("posizione"));
		ArmaPreferita a = gest.mappaArma(emf).get(req.getParameter("Arma"));
		Eroe e = gest.mappaEroe(emf).get(req.getParameter("Operatore"));
	}
	
}
