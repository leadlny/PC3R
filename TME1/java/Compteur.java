package tme1;

public class Compteur {
  private int init;
  private final Object lock = new Object();

  public Compteur(int init) {
    synchronized (lock) {
      this.init = init;
    }
  }

  public boolean estComplet() {
    synchronized (lock) {
      return init == 0;
    }
  }

  public void decrementer() {
    synchronized (lock) {
      init--;
    }
  }
}
