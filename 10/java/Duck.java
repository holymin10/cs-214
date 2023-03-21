/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sungmin Choi (sc94)
 * Date: March 20, 2023
 ******************************************************/

public class Duck extends Bird{
    
public Duck() {
      super();
   }

   public Duck(String name) {     
      super(name);
   }



   public String call() {
     return "Quack!";
   }

}

