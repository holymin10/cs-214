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

