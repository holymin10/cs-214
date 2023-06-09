Script started on 2023-03-13 20:25:04-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon12: ~/214/labs/09/ruby[01;32msc94@maroon12[00m:[01;34m~/214/labs/09/ruby[00m$ cat Name.rb nameTester.rb
# Name.rb is a module for our 'Name' type-abstraction.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sungmin Choi (sc94)
# Date:March 13, 2023
####################################################

module Names
    class Name

        def initialize(first, middle, last)
        @first, @middle, @last = first, middle, last
        end
  
        attr_reader :first, :middle, :last
  
        def fullName
        @first + " " + @middle + " " + @last
        end
  
        def print
        puts fullName
        fullName
        end
    end
end# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sungmin Choi (sc94)
# Date:March 13, 2023
####################################################

require './Name'
require 'test/unit/assertions'
include Test::Unit::Assertions



def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

]0;sc94@maroon12: ~/214/labs/09/ruby[01;32msc94@maroon12[00m:[01;34m~/214/labs/09/ruby[00m$ ruby nameTester.rb
John Paul Jones
All tests passed!
]0;sc94@maroon12: ~/214/labs/09/ruby[01;32msc94@maroon12[00m:[01;34m~/214/labs/09/ruby[00m$ exit

Script done on 2023-03-13 20:26:02-04:00 [COMMAND_EXIT_CODE="0"]
