Script started on 2023-03-20 19:52:03-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon14: ~/214/labs/10/java[01;32msc94@maroon14[00m:[01;34m~/214/labs/10/java[00m$ makefile  javacat Birds.java Bird.java Duck.java Goose.java OOwl.java
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Sungmin Choi (sc94)
 * Date: March 20, 2023
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();
      System.out.println();
    }
}

/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sungmin Choi (sc94)
 * Date: March 20, 2023
 ******************************************************/

import java.io.*;

public class Bird
{

   public Bird() {
	myName = "";
    } 


    public Bird(String name) {
	myName = name;
    } 


public String getName() {
	return myName;
    } 


    public String call() {
	return "Squaaaaaaaaaawk!";
    } 


    public void print() {
	System.out.println( getName() + ' ' + getClass().getName()
                             + " says " + call() );
    } 



  private String myName;
}

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

]0;sc94@maroon14: ~/214/labs/10/java[01;32msc94@maroon14[00m:[01;34m~/214/labs/10/java[00m$ [Kcat Birds.java Bird.java Duck.java Goose.java OOwl.java[A]0;sc94@maroon14: ~/214/labs/10/java[01;32msc94@maroon14[00m:[01;34m~/214/labs/10/java[00m$ makefile [K
[K[A]0;sc94@maroon14: ~/214/labs/10/java[01;32msc94@maroon14[00m:[01;34m~/214/labs/10/java[00m$ makefile  java    Birds
javac -deprecation Birds.java
]0;sc94@maroon14: ~/214/labs/10/java[01;32msc94@maroon14[00m:[01;34m~/214/labs/10/java[00m$ java Birds

Welcome to the Bird Park!

Hawkeye Bird says Squaaaaaaaaaawk!
Donald Duck says Quack!
Mother Goose Goose says Honk!
Woodsey Owl says Whoo-hoo!

]0;sc94@maroon14: ~/214/labs/10/java[01;32msc94@maroon14[00m:[01;34m~/214/labs/10/java[00m$ exit

Script done on 2023-03-20 19:52:21-04:00 [COMMAND_EXIT_CODE="0"]
