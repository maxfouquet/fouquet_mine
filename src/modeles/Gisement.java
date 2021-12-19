package modeles;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="type",
discriminatorType = DiscriminatorType.INTEGER)
public class Gisement{
	
	public Gisement(){}
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	public int getId(){return id;}
	public void setId(int id){this.id = id;}
	
	private String type;
	public String getType(){return type;}
	public void setType(String type){this.type = type;}
	
	@Column(name = "date_mise_service")
	private Date dateMiseService;
	public Date getDateMiseService(){return dateMiseService;}
	public void setDateMiseService(Date dateMiseService){this.dateMiseService = dateMiseService;}
	
	@Column(name = "rendement")
	private float rendement;
	public float getRendement(){return rendement;}
	public void setRendement(float rendement){this.rendement = rendement;}
	
	@Column(name = "coefficient_purete")
	private float coefficientPurete;
	public float getCoefficientPurete(){return coefficientPurete;}
	public void setCoefficientPurete(float coefficientPurete){this.coefficientPurete = coefficientPurete;}
	
	@Column(name = "densite")
	private float densite;
	public float getDensite(){return densite;}
	public void setDensite(float densite){this.densite = densite;}
	
    @OneToMany(fetch=FetchType.LAZY, targetEntity=Equipe.class, mappedBy="gisement")
	private Set<Equipe> equipes = new HashSet<Equipe>();
	public Set<Equipe> getEquipes() {return this.equipes;}
	public void setEquipes(Set<Equipe> equipes) {this.equipes = equipes;}
	
	public float revenu() {
		return 0;
	}
	
	public float calculRentabilite() {
		float revenuGisement = 0;
		float coutMensuelEquipes = 0;
		float rentabilite = 0;
		for(Equipe equipe: this.equipes) {
			Gisement gisement = equipe.getGisement();
			revenuGisement = gisement.revenu();
			coutMensuelEquipes += equipe.cout();
		}
		rentabilite = revenuGisement - coutMensuelEquipes;
		return rentabilite;
	}
	
}
