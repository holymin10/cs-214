Script started on 2023-01-30 20:12:46-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon03: ~/214/labs/04[01;32msc94@maroon03[00m:[01;34m~/214/labs/04[00m$ cat LogTable.java
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by:
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();


while (start <= stop) {
System.out.println ("Log of " + start + ": " + Math.log10(start));  
start = start + increment;
}

  }
}

]0;sc94@maroon03: ~/214/labs/04[01;32msc94@maroon03[00m:[01;34m~/214/labs/04[00m$ javac -deprecation LogtT  Table.java
]0;sc94@maroon03: ~/214/labs/04[01;32msc94@maroon03[00m:[01;34m~/214/labs/04[00m$ java l LogTable.java
error: class found on application class path: LogTable
]0;sc94@maroon03: ~/214/labs/04[01;32msc94@maroon03[00m:[01;34m~/214/labs/04[00m$ java LogTable.java     
To display a table of logarithms,
enter the start, stop and increment values: 
1
10
0.5
Log of 1.0: 0.0
Log of 1.5: 0.17609125905568124
Log of 2.0: 0.3010299956639812
Log of 2.5: 0.3979400086720376
Log of 3.0: 0.47712125471966244
Log of 3.5: 0.5440680443502757
Log of 4.0: 0.6020599913279624
Log of 4.5: 0.6532125137753437
Log of 5.0: 0.6989700043360189
Log of 5.5: 0.7403626894942439
Log of 6.0: 0.7781512503836436
Log of 6.5: 0.8129133566428556
Log of 7.0: 0.8450980400142568
Log of 7.5: 0.8750612633917001
Log of 8.0: 0.9030899869919435
Log of 8.5: 0.9294189257142927
Log of 9.0: 0.9542425094393249
Log of 9.5: 0.9777236052888477
Log of 10.0: 1.0
]0;sc94@maroon03: ~/214/labs/04[01;32msc94@maroon03[00m:[01;34m~/214/labs/04[00m$ exit
exit

Script done on 2023-01-30 20:13:34-05:00 [COMMAND_EXIT_CODE="0"]
