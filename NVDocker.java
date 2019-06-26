import java.util.Random;

class NVDocker {

  static Random rand = new Random();

   public static void main(String[] a) {
      System.out.println("Congratulations, you are running nerd.vision in Docker!");
      while(true)
      {
        printRandom();
      }
   }

   public static void printRandom()
   {
     try {
       Thread.sleep(5000);
       int i = rand.nextInt(50);
       System.out.println("Random number :" + i);
     }
     catch(Exception e) {}
   }
}
