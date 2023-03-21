Script started on 2023-01-09 20:38:24-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="179" LINES="90"]
]0;sc94@maroon08: ~[01;32msc94@maroon08[00m:[01;34m~[00m$ cat circle_area.rb
#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sungmin Choi (sc94)
# Date: Jan 09, 2023
################################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927
def circleArea(r)
    PI * r ** 2 
    end

    if __FILE__ == $0
       puts "To compute the area of a circle,"
          print " enter its radius: "
             radius = gets.chomp.to_f
                print "The circle's area is: "
                   puts circleArea(radius)
                   end
]0;sc94@maroon08: ~[01;32msc94@maroon08[00m:[01;34m~[00m$ cat circle_area.rb[1Pscript script.adaexit[Kscript script.adacat circle_area.rb[Kcat circle_area.rb[1P[1P[1P[1@r[1@u[1@b[1@y [1@ 
To compute the area of a circle,
 enter its radius: 1
The circle's area is: 3.1415927
]0;sc94@maroon08: ~[01;32msc94@maroon08[00m:[01;34m~[00m$ ruby  circle_area.rb
To compute the area of a circle,
 enter its radius: 2
The circle's area is: 12.5663708
]0;sc94@maroon08: ~[01;32msc94@maroon08[00m:[01;34m~[00m$ ruby  circle_area.rb
To compute the area of a circle,
 enter its radius: 2.5
The circle's area is: 19.634954375
]0;sc94@maroon08: ~[01;32msc94@maroon08[00m:[01;34m~[00m$ ruby  circle_area.rb
To compute the area of a circle,
 enter its radius: 4.99999
The circle's area is: 78.53950334104418
]0;sc94@maroon08: ~[01;32msc94@maroon08[00m:[01;34m~[00m$ exit
exit

Script done on 2023-01-09 20:39:17-05:00 [COMMAND_EXIT_CODE="0"]
