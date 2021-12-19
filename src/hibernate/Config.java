package hibernate;

import org.hibernate.*;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import modeles.Equipe;
import modeles.Gisement;
import modeles.Modele;
import modeles.Ouvrier;

/**
 * Cette Classe permet d'établir une connexion avec Hibernate et
 * de mettre à disposition son objet session pour requêter la base.
 *
 */
public class Config {

	private Session session;
	
	/**
	 * Constructeur établissant une connexion avec Hibernate
	 */
	public Config() {
		Configuration configuration = new Configuration().addClass(Gisement.class).addClass(Ouvrier.class).addClass(Modele.class).addClass(Equipe.class).configure();
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
		SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		session = sessionFactory.openSession();
	}
	
	/**
	 * Retourne la session hibernate.
	 * @return La session hibernate
	 */
	public Session getSession(){
		return this.session;
	}
}