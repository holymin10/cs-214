Script started on 2023-03-20 21:01:52-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon14: ~/214/labs/10/ruby[01;32msc94@maroon14[00m:[01;34m~/214/labs/10/ruby[00m$ cat Bird.rb birds.rb Duck.rb Goose.rb Owl.rb
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sungmin Choi (sc94)
# Date: March 20, 2023
####################################################

class Bird

    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def call
      'Squaaaaaaawk!'
    end
  
    def className
      self.class.to_s
    end
  
    def print
      puts name + " " + className + " says \"" + call + "\""
    end
  
  end# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sungmin Choi (sc94)
# Date: Marhc 20, 2023
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sungmin Choi (sc94)
# Date: March 20, 2023
####################################################

require './Bird.rb'

class Duck < Bird
    def call
        'Quack!'
    end

end# Goose.rb | Defines the Goose class which inherits attributes and methods
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

end# Owl.rb | Defines the Owl class which inherits attributes and methods
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

end]0;sc94@maroon14: ~/214/labs/10/ruby[01;32msc94@maroon14[00m:[01;34m~/214/labs/10/ruby[00m$ ruby birds.rb

Welcome to the Bird Park!

Hawkeye Bird says "Squaaaaaaawk!"
Donald Duck says "Quack!"
Mother Goose says "Honk!"
Woodsey Owl says "Whoo!"


]0;sc94@maroon14: ~/214/labs/10/ruby[01;32msc94@maroon14[00m:[01;34m~/214/labs/10/ruby[00m$ exit

Script done on 2023-03-20 21:02:46-04:00 [COMMAND_EXIT_CODE="0"]
