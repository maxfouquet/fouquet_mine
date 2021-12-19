package modeles;

import java.util.Date;

import javax.persistence.*;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="type",
discriminatorType = DiscriminatorType.INTEGER)
public class Modele {
	
	public Modele(){}
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	public int getId(){return id;}
	public void setId(int id){this.id = id;}
	
	@Column(name = "date_conception")
	private Date dateConception;
	public Date getDateConception(){return dateConception;}
	public void setDateConception(Date dateConception){this.dateConception = dateConception;}
	
	@Column(name = "cout_exploitation")
	private float coutExploitation;
	public float getCoutExploitation(){return coutExploitation;}
	public void setCoutExploitation(float coutExploitation){this.coutExploitation = coutExploitation;}
}
