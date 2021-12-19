package hibernate;

import java.util.Date;
import java.util.List;

import org.hibernate.*;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import modeles.Bouzon;
import modeles.Equipe;
import modeles.Gisement;
import modeles.Humain;
import modeles.Modele;
import modeles.Ouvrier;
import modeles.Robot;

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
	public static List<Gisement> getListGisement(){
		Session session = new Config().getSession();
		List<Gisement> gisements = session.createQuery("from Gisement", Gisement.class).getResultList();
		return gisements;
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
		float coutEquipe = 0;
		for(Object[] result: results) {
			Object ouvrier = result[2];
			if(ouvrier instanceof Robot) {
				Robot robot = (Robot) ouvrier;
				coutEquipe += robot.cout();
			} else {
				Humain humain = (Humain) ouvrier;
				coutEquipe += humain.cout();
			}
			Equipe equipe = (Equipe) result[0];
			equipe.setCout(coutEquipe);
		}
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