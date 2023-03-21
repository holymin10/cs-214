/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sungmin Choi (sc94)
 * Date: March 20, 2023
 ******************************************************/

public class Goose extends Bird {

   public Goose() {
      super();
   }

   public Goose(String name) {     
     super(name);
   } 

   public String call() {
     return "Honk!";
   } 
} 

