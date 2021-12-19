package controleurs;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import hibernate.Action;
import modeles.Modele;

/**
 * Servlet implementation class Hibernate
 */
public class Mine extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/vues/mine/";

    /**
     * Default constructor. 
     */
    public Mine() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Action
		String action = request.getParameter("action");
		
		// Vue par défaut
		String vue = VUE + "index.jsp";
		
		if(action != null) {
			
			// Afficher la liste des gisements
			if(action.equals("listGisement")){
				List<Object[]> listeGisements = Action.getListGisement();
				request.setAttribute("gisements", listeGisements);
				vue = VUE + "listGisement.jsp";
			}
			
			// Afficher la liste des ouvriers
			if(action.equals("listOuvrier")){
				List<Object[]> listeOuvriers = Action.getListOuvrier();
				request.setAttribute("ouvriers", listeOuvriers);
				vue = VUE + "listOuvrier.jsp";
			}
			
			// Afficher la liste des équipes
			if(action.equals("listEquipe")){
				List<Object[]> listeEquipes = Action.getListEquipe();
				request.setAttribute("equipes", listeEquipes);
				vue = VUE + "listEquipe.jsp";
			}
			
			// Afficher la liste des modèles de robot
			if(action.equals("listModele")){
				List<Modele> listeModeles = Action.getListModele();
				request.setAttribute("modeles", listeModeles);
				vue = VUE + "listModele.jsp";
			}
			
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(vue);
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
