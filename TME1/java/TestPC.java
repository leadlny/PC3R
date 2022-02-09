package tme1;


public class TestPC {
  public static void main(String[] args) throws InterruptedException {

    String[] produits = {"Banane", "Pomme", "Poire", "Fraise","Peche","Citron","Patate","Clementine","Framboise","Kiwi"};
    Tapis tapis = new Tapis(10000);
    int nbPro = 10;
    int nbConso = 3;
    int cible = 3;

    Compteur c = new Compteur(cible * nbPro);
    Thread[] prod = new Thread[nbPro];
    Thread[] conso = new Thread[nbConso];

    for (int i = 0; i < nbPro; i++) {
      prod[i] = new Thread(new Producteur(produits[i], cible, tapis));
      prod[i].start();
    }

    for (int j = 0; j < nbConso; j++) {
      conso[j] = new Thread(new Consommateur(c, tapis));
      conso[j].start();
    }

    for (Thread producer : prod) {
        producer.join();
      }

      for (Thread consumer : conso) {
        consumer.join();
      }
  }
}
