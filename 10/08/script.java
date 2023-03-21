Script started on 2023-03-06 19:45:42-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sungmin Choi (sc94)
 * Date: March 06, 2023
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

     assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}

class Name
   {
  private String myFirst, myMiddle, myLast;

// This is the constructor
    public Name(String first, String middle, String last) {
      myFirst = first;
      myMiddle = middle;
      myLast = last;
   }

// These are the getters
   public String getFirst() {
      return myFirst;
   }

   public String getMiddle() {
    return myMiddle;
   }

   public String getLast() {
    return myLast;
   }

   public String toString() {
      return myFirst + ' ' + myMiddle + ' ' + myLast;
   }

   };

]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ make java
make: Nothing to be done for 'java'.
]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ java N -ea NameTester
John Paul Jones
All tests passed!
]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ exit

Script done on 2023-03-06 19:46:13-05:00 [COMMAND_EXIT_CODE="0"]
