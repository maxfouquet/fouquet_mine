package modeles;

import java.util.Date;

import javax.persistence.*;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="type",
discriminatorType = DiscriminatorType.INTEGER)
public class Ouvrier{
	
	public Ouvrier(){}
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	public int getId(){return id;}
	public void setId(int id){this.id = id;}
	
	private String type;
	public String getType(){return type;}
	public void setType(String type){this.type = type;}
	
	@Column(name = "nom")
	private String nom;
	public String getNom(){return nom;}
	public void setNom(String nom){this.nom = nom;}
	
	@Column(name = "date_affectation_equipe")
	private Date dateAffectationEquipe;
	public Date getDateAffectationEquipe(){return dateAffectationEquipe;}
	public void setDateAffectationEquipe(Date dateAffectationEquipe){this.dateAffectationEquipe = dateAffectationEquipe;}
	
	@Column(name = "numero_serie")
	private int numeroSerie;
	public int getNumeroSerie(){return numeroSerie;}
	public void setNumeroSerie(int numeroSerie){this.numeroSerie = numeroSerie;}
	
	@Column(name = "salaire")
	private float salaire;
	public float getSalaire(){return salaire;}
	public void setSalaire(float salaire){this.salaire = salaire;}
	
    @ManyToOne (fetch=FetchType.LAZY)
    @JoinColumn(name = "id_modele")
    private Modele modele;
    public Modele getModele(){ return modele; }
    public void setModele(Modele modele) {this.modele = modele;}
    
    @ManyToOne (fetch=FetchType.LAZY)
    @JoinColumn(name = "id_equipe")
    private Equipe equipe;
    public Equipe getEquipe(){ return equipe; }
    public void setEquipe(Equipe equipe) {this.equipe = equipe;}
    
	public float cout() {
		return 0;
	}

}
