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
end