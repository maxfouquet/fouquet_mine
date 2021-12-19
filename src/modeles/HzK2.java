package modeles;

import javax.persistence.*;

import interfaces.Rentable;

@Entity
@DiscriminatorValue("2")
public class HzK2 extends Gisement implements Rentable{
	
	public HzK2() {
		super();
	}
	
	public float revenu() {
		float revenuHzK2 = (float) (this.getRendement() * this.getCoefficientPurete() * 18.987);
		return revenuHzK2;
	}
}
