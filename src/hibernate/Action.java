package hibernate;

import java.util.List;

import org.hibernate.*;

import modeles.Modele;

/**
 * Cette classe comporte toutes les actiosn pour intéragir avec la base de données :
 *  - Récupérer la liste des gisements
 *  - Récupérer la liste des ouvriers
 *  - etc...
 *
 */
public class Action {

	/**
	 * Récupère la liste des gisements de la mine
	 * @return La liste des gisements
	 */
	public static List<Object[]> getListGisement(){
		Session session = new Config().getSession();
		List<Object[]> results = session.createQuery("from Gisement g left join g.equipes group by g.id order by g.id", Object[].class).getResultList();
		return results;
	}
	
	/**
	 * Récupère la liste des ouvriers de la mine
	 * @return La liste des ouvriers
	 */
	public static List<Object[]> getListOuvrier(){
		Session session = new Config().getSession();
		List<Object[]> ouvriers = session.createQuery("from Ouvrier o left join o.modele left join o.equipe order by o.id", Object[].class).getResultList();
		return ouvriers;
	}
	
	/**
	 * Récupère la liste des équipes de la mine
	 * @return La liste des équipes
	 */
	public static List<Object[]> getListEquipe(){
		Session session = new Config().getSession();
		List<Object[]> results = session.createQuery("from Equipe e left join e.gisement g left join e.ouvrier o order by e.id", Object[].class).getResultList();
		return results;
	}
	
	/**
	 * Récupère la liste des modèles de robot
	 * @return La liste des modèles
	 */
	public static List<Modele> getListModele(){
		Session session = new Config().getSession();
		List<Modele> modeles = session.createQuery("from Modele m order by m.id", Modele.class).getResultList();
		return modeles;
	}
	
}