package controleurs;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import hibernate.Action;
import modeles.Equipe;
import modeles.Gisement;
import modeles.Modele;
import modeles.Ouvrier;

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
			
			// Afficher un gisement
			if(action.equals("gisement")){
				int gisementId = Integer.parseInt(request.getParameter("gisementId")); 
				Gisement gisement = (Gisement) Action.getGisement(gisementId)[0];
				request.setAttribute("gisement", gisement);
				vue = VUE + "gisement.jsp";
			}
			
			// Afficher un ouvrier
			if(action.equals("ouvrier")){
				int ouvrierId = Integer.parseInt(request.getParameter("ouvrierId")); 
				Ouvrier ouvrier = (Ouvrier) Action.getOuvrier(ouvrierId)[0];
				request.setAttribute("ouvrier", ouvrier);
				vue = VUE + "ouvrier.jsp";
			}
			
			// Afficher une équipe
			if(action.equals("equipe")){
				int equipeId = Integer.parseInt(request.getParameter("equipeId")); 
				Equipe equipe = (Equipe) Action.getEquipe(equipeId)[0];
				request.setAttribute("equipe", equipe);
				vue = VUE + "equipe.jsp";
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
