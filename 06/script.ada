Script started on 2023-02-13 20:59:56-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon29: ~/214/labs/06[01;32msc94@maroon29[00m:[01;34m~/214/labs/06[00m$ cat string     plit.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sungmin Choi (sc94)
-- Date: Feb 13, 2023
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   -- Replace this line with definition of split() 
   procedure split(The_String : in String; Pos : in integer; Part1 : out String; Part2 : out String) is
   begin
      Move(The_String(The_String'First .. Pos - 1), Part1);
      Move(The_String(Pos .. The_String'Last), Part2);
   end Split;


begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

]0;sc94@maroon29: ~/214/labs/06[01;32msc94@maroon29[00m:[01;34m~/214/labs/06[00m$ gnatmake split
gnatmake: "split" up to date.
]0;sc94@maroon29: ~/214/labs/06[01;32msc94@maroon29[00m:[01;34m~/214/labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 1
The first part is                                         
 and the second part is hello                                   
]0;sc94@maroon29: ~/214/labs/06[01;32msc94@maroon29[00m:[01;34m~/214/labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 4
The first part is hel                                     
 and the second part is lo                                      
]0;sc94@maroon29: ~/214/labs/06[01;32msc94@maroon29[00m:[01;34m~/214/labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
]0;sc94@maroon29: ~/214/labs/06[01;32msc94@maroon29[00m:[01;34m~/214/labs/06[00m$ exit

Script done on 2023-02-13 21:01:00-05:00 [COMMAND_EXIT_CODE="0"]
