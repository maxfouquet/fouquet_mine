package modeles;

import java.util.Date;

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
	
	public float calculRentabilite() {
		return (float) 0.55;
	}
}
