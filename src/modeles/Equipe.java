package modeles;

import javax.persistence.*;

import interfaces.Facturable;

@Entity
public class Equipe implements Facturable{
	
	public Equipe(){}
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	public int getId(){return id;}
	public void setId(int id){this.id = id;}
	
	@Column(name = "nom")
	private String nom;
	public String getNom(){return nom;}
	public void setNom(String nom){this.nom = nom;}
	
	private float cout;
	public float cout(){return cout;}
	public void setCout(float cout){this.cout = cout;}
	
	private float rentabilite;
	public float calculRentabilite(){return rentabilite;}
	public void setRentabilite(float rentabilite){this.rentabilite = rentabilite;}
	
	@ManyToOne (fetch=FetchType.LAZY)
    @JoinColumn(name = "id_gisement")
    private Gisement gisement;
    public Gisement getGisement(){ return gisement; }
    public void setGisement(Gisement gisement) {this.gisement = gisement;}
    
    @ManyToOne (fetch=FetchType.LAZY)
    @JoinColumn(name = "id_ouvrier")
    private Ouvrier ouvrier;
    public Ouvrier getOuvrier(){ return ouvrier; }
    public void setOuvrier(Ouvrier ouvrier) {this.ouvrier = ouvrier;}
    
}
