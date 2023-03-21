# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sungmin Choi (sc94)
# Date: March 20, 2023
####################################################

require './Bird.rb'

class Owl < Bird
    def call
        'Whoo!'
    end

end