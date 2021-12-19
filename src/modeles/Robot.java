package modeles;

import java.util.Date;
import java.util.concurrent.TimeUnit;

import javax.persistence.*;

import interfaces.Facturable;

@Entity
@DiscriminatorValue("1")
public class Robot extends Ouvrier implements Facturable{
	
	public float cout() {
		float coutExploitation = this.getModele().getCoutExploitation();
		float diff = new Date().getTime() - this.getDateAffectationEquipe().getTime();
		int nbJoursAffectationEquipe = (int) TimeUnit.DAYS.convert((long) diff, TimeUnit.MILLISECONDS);
		float coutRobot = (float) (coutExploitation + nbJoursAffectationEquipe * 0.3546);
		
		return coutRobot;
	}
}