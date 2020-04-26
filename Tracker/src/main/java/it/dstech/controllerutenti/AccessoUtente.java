package it.dstech.controllerutenti;

import java.io.IOException;

import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.dstech.service.GestioneDB;

@WebServlet(name = "accesso", urlPatterns = "/accesso")
public class AccessoUtente extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("messaggio", "Errore, non si può accedere manulmente alla pagina.");
		req.getRequestDispatcher("home.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManagerFactory emf = (EntityManagerFactory) getServletContext().getAttribute("emf");
		HttpSession session = req.getSession();
		GestioneDB gest = new GestioneDB();
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		if(gest.mappaUtenti(emf).containsKey(username) && gest.mappaUtenti(emf).get(username).getPass().equals(password) && gest.mappaUtenti(emf).get(username).getTipo().equals("Cliente") ) {
			session.setAttribute("Utente", gest.mappaUtenti(emf).get(username) );
			req.getRequestDispatcher("MenuCliente.jsp").forward(req, resp);
		}else if(gest.mappaUtenti(emf).containsKey(username) && gest.mappaUtenti(emf).get(username).getPass().equals(password) && gest.mappaUtenti(emf).get(username).getTipo().equals("Admin") ) {
			session.setAttribute("Utente", gest.mappaUtenti(emf).get(username) );
			req.getRequestDispatcher("MenuAdmin.jsp").forward(req, resp);
		}else {
			req.setAttribute("messaggio", "Utente registrato correttamente, ora puoi controllare l'email.");
			req.getRequestDispatcher("Accesso.jsp").forward(req, resp);
		}
		
		
	}
}
