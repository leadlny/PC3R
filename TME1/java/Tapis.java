package tme1;

import java.util.ArrayList;

public class Tapis {
  private final int capacite;
  private ArrayList<Paquet> file;
  private int taille;
  private final Object lock = new Object();


  public Tapis(int capacite) {
    this.capacite = capacite;
    file = new ArrayList<>();
    taille = 0;
  }

  private boolean estVide() {
    synchronized (lock) {
      return taille == 0;
    }
  }

  private boolean estPleine() {
    synchronized (lock) {
      return taille == capacite;
    }
  }

  public void enfiler(Paquet p) throws InterruptedException {
    synchronized (lock) {
      while (estPleine()) {// Si le tapis est plein le producteur doit attendre
        lock.wait();
      }
      file.add(p);
      
      if(estVide()) { // si le tapis était vide, on va reveiller les consommateurs qui attendaeient
    	  lock.notifyAll();
      }
      taille++; // 
    }
  }

  public Paquet defiler() throws InterruptedException {
    synchronized (lock) {
      while (estVide()) {// si le tapis est vide le consommateur doit attendre
        lock.wait();
      }
      Paquet p = file.get(0);
      file.remove(0);
      
      if(estPleine()) {// si le tapis était plein on va reveiller les producteurs qui attendaient
    	  lock.notifyAll();
      }
      taille--;
      return p;
    }
  }
}
