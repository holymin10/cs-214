Script started on 2023-01-23 20:30:42-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;

   function yearCode (year : string) return Integer is
	begin
	if year = "freshman" then
	return 1;
	elsif year = "sophomore" then
	return 2;
	elsif year = "junior" then 
	return 3;
	elsif year = "senior" then 
	return 4;
	else return 0;
	end if;
end yearCode;
	

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year(Year'First..charsRead)));                       -- Convert and output
   New_Line;
end year_codes;

]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ gnatmake cat year_codes.adbexit[K./year_codesgnatmake year_codes.adb
gnatmake: "year_codes" up to date.
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ gnatmake year_codes.adb[5Pcat year_codes.adbexit[K./year_codes
Enter your academic year: freshman
          1
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: soh phomore
          2
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: junior
          3
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: senior
          4
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ exit
exit

Script done on 2023-01-23 20:31:21-05:00 [COMMAND_EXIT_CODE="0"]
