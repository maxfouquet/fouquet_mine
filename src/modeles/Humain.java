package modeles;

import javax.persistence.*;

import interfaces.Facturable;

@Entity
@DiscriminatorValue("2")
public class Humain extends Ouvrier implements Facturable{
	
	public float cout() {
		float coutHumain = this.getSalaire() + 5000;
		
		return coutHumain;
	}
}