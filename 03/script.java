Script started on 2023-01-23 19:55:10-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ cat YearCodes,java
cat: YearCodes,java: No such file or directory
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ cat YearCodes,java[1P[1@.
import java.util.Scanner; //Inport the Scanner class

public class YearCodes {

	public static void main(String[] args) { 
		Scanner keyboard = new Scanner(System.in); // Creating a new Scanner object that reflects keyboard input
		System.out.println("\nEnter your academic year: ");
		
		String year = keyboard.nextLine(); // Reads user input
		System.out.println("Your year is " + yearCode(year));

	
}

public static int yearCode(String year)
{
   if (year.equals("freshman"))
      return 1;
   else
      if (year.equals("sophomore"))
         return 2;
      else
         if (year.equals("junior"))
            return 3;
         else
            if (year.equals("senior"))
               return 4;
            else
               return 0;
}
}
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ cat YearCodes.java,javavim YearCodes.javals[Kcd  /home/cs/214/current/sc94[14@p project02.docx /home/cs/214/current/sc94[4P  /home/cs/214/current/sc94ls[Kcd  /home/cs/214/current/sc94[4P/home/cs/214/current/sc94[4@cd  /home/cs/214/current/sc94ls[Kcp project02  /home/cs/214/current/sc94[4@.docx /home/cs/214/current/sc94[14Pd  /home/cs/214/current/sc94ls[Kvim YearCodes.javacat YearCodes,java.java[K-d  javac depre ic  ecation j YearCodes.Ja  jaca   va  ac va
error: Class names, 'deprecation', are only accepted if annotation processing is explicitly requested
1 error
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ javac deprecation YearCodes.java  [1@ [1@-
error: invalid flag: -
Usage: javac <options> <source files>
use --help for a list of possible options
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ javac - deprecation YearCodes.java[1Pd
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ java YearCodes. 

Enter your academic year: 
freshment 
Your year is 0
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ java YearCodes

Enter your academic year: 
freshman
Your year is 1
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ java YearCodes

Enter your academic year: 
sophomore
Your year is 2
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ java    java YearCodes

Enter your academic year: 
junior
Your year is 3
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ java YearCodes

Enter your academic year: 
senior
Your year is 4
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ exit
exit

Script done on 2023-01-23 19:57:11-05:00 [COMMAND_EXIT_CODE="0"]
