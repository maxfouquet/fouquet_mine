package modeles;

import javax.persistence.*;

import interfaces.Rentable;

@Entity
@DiscriminatorValue("1")
public class Bouzon extends Gisement implements Rentable{
	
	public Bouzon() {
		super();
	}
	
	public float revenu() {
		float revenuBouzon = this.getRendement() * this.getDensite();
		return revenuBouzon;
	}
}
