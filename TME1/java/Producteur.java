package tme1;

public class Producteur implements Runnable {
	private final String nom_produit;
	private final int id;
	private final int cible;
	private final Tapis tapis;
	private int production;
	private static final Object lock =new Object();
	private static int cpt=0;

  public Producteur(String nom, int cible, Tapis tapis) {
	  nom_produit = nom;
	  this.cible = cible;
	  this.tapis = tapis;
	  production = 0;
	  id = cpt;
	  cpt++;
  	}

  @Override
  public void run() {
	  while (production < cible) {
	  		synchronized(lock) {
	  			try {
	  				Paquet p = new Paquet(nom_produit +" "+ production);
	  				tapis.enfiler(p);
	  				System.out.println("Producer " + id + ": produce " + nom_produit+" "+production);
	  				production++;
	  			} catch (InterruptedException e) {
	  				System.out.print("Erreur à l'enfilement");
	  			}
	  		}
	  }
  }
}
	


