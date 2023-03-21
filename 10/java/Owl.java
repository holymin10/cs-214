/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sungmin Choi (sc94)
 * Date: March 20, 2023
 ******************************************************/

public class Owl extends Bird {

   public Owl() {
      super();
   }

   public Owl(String name) {     
     super(name);
   } 

   public String call() {
     return "Whoo-hoo!";
   } 

} 

