#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by:
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
   print "Enter the start value: "
#### ADD CODE HERE TO GET THESE VALUES AS NUMBERS
start = gets
start = start.to_f
   print "Enter the stop value: "
####
stop = gets
stop = stop.to_f
   print "Enter the increment value: "
####   
increment = gets
increment = increment.to_f
   
   while start <= stop 
      puts "The logarithm of #{start} is #{Math.log10(start)}"
      start = start + increment
   end  
end

