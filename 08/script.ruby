Script started on 2023-03-06 21:21:29-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sungmin Choi (sc94)
# Date: March 06, 2023
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name

   def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end

   # These are the getters
    attr_reader :first, :middle, :last

   def fullName()
      first + " " + middle + " " + last
   end

   def print()
      puts(fullName)
      fullName
   end
   
end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ ruby NameTester.rb
John Paul Jones
All tests passed!
]0;sc94@maroon12: ~/214/labs/08[01;32msc94@maroon12[00m:[01;34m~/214/labs/08[00m$ exit

Script done on 2023-03-06 21:21:56-05:00 [COMMAND_EXIT_CODE="0"]
