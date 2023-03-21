# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sungmin Choi (sc94)
# Date: March 20, 2023
####################################################

require './Bird.rb'

class Goose < Bird
    def call
        'Honk!'
    end

end