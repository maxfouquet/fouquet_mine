package modeles;

import java.util.HashSet;
import java.util.Set;

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
	
	@ManyToOne (fetch=FetchType.LAZY)
    @JoinColumn(name = "id_gisement", nullable=false)
    private Gisement gisement;
    public Gisement getGisement(){ return gisement; }
    public void setGisement(Gisement gisement) {this.gisement = gisement;}
    
    @ManyToOne (fetch=FetchType.LAZY)
    @JoinColumn(name = "id_ouvrier")
    private Ouvrier ouvrier;
    public Ouvrier getOuvrier(){ return ouvrier; }
    public void setOuvrier(Ouvrier ouvrier) {this.ouvrier = ouvrier;}
    
    @OneToMany(fetch=FetchType.LAZY, targetEntity=Ouvrier.class, mappedBy="ouvrier")
	private Set<Ouvrier> ouvriers = new HashSet<Ouvrier>();
	public Set<Ouvrier> getOuvriers() {return this.ouvriers;}
	public void setOuvriers(Set<Ouvrier> ouvriers) {this.ouvriers = ouvriers;}
	
	public float cout() {
		float coutEquipe = 0;
		for(Ouvrier ouvrier: this.ouvriers) {
			coutEquipe += ouvrier.cout();
		}
		return coutEquipe;
	}
    
}
