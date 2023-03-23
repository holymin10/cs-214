Script started on 2023-03-06 20:33:01-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ cat name_tester.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sungmin Choi (sc94)
-- Date: March 06, 2023
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : constant Integer := 8;

  type Name is 
    record
      MyFirst : String(1..NAME_SIZE);
      MyMiddle : String(1..NAME_SIZE);
      MyLast : String(1..NAME_SIZE);
  end record;

  aName : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

   procedure Init (TheName : out Name; First, Middle, Last : in String) is
   begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
   end Init;


  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

 function getFirst(TheName : in Name) return String is 
  begin return TheName.MyFirst;
 end getFirst;

  ----------------------------------------------
  -- getMiddle(Name) retrieves Name.myMiddle        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myMiddle.                  -
  ----------------------------------------------

 function getMiddle(TheName : in Name) return String is 
  begin return TheName.MyMiddle;
 end getMiddle;

  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myLast.                  -
  ----------------------------------------------
 function getLast(TheName : in Name) return String is 
  begin return TheName.MyLast;
 end getLast;


  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  function getFullName(TheName : in Name) return String is 
    myFullName : String(1..26);
  begin
    myFullName := TheName.MyFirst & " " & TheName.MyMiddle & " " & TheName.MyLast;
    return myFullName;
  end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  procedure Put (TheName : in Name) is begin 
    Put( getFullName(TheName) );
  end Put;



begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                   "getFullName() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ cat name_tester.adb                   make ada
make: Nothing to be done for 'ada'.
]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ ./make adacat name_tester.adbjava -ea NameTester[10Pmake javajava -ea NameTestercat name_tester.adb[11Pmake ada./[Kname_tester
John     Paul     Jones   
All tests passed!
]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ exit

Script done on 2023-03-06 20:34:01-05:00 [COMMAND_EXIT_CODE="0"]
