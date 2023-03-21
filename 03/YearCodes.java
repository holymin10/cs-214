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
