package tme1;

public class Consommateur implements Runnable {
	private final int id;
	private final Compteur c;
	private final Tapis tapis;
	private static final Object lock=new Object();
	private static int cpt=0;

  public Consommateur( Compteur c, Tapis t) {
	  id=cpt;
	  cpt++;
	  this.c = c;
	  tapis = t;
  }

  @Override
  public void run() {  
	  while (!c.estComplet()) {
		 synchronized(lock) {
			 try {
				  Paquet p = tapis.defiler();
				  String chaine = "Consumer " + id + ": mange " + p.getPaquet();
				  System.out.println(chaine);
				  c.decrementer();
				  //Thread.sleep(1000);
        
			  } catch (InterruptedException e) {
				  e.printStackTrace(); 
			  }
		  	}
		  }
	 }
}
