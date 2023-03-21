Script started on 2023-01-23 20:59:30-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ cat script      year_codes.ruby
cat: year_codes.ruby: No such file or directory
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ cat year_codes.ruby   b
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
# Finished by: Sungmin Choi (Sc94)
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode year
	if year =~ /freshman/
		return 1
	end;
	if year =~ /sophomore/ 
		return 2
	end
	if year =~ /junior/ 
		return 3
	end
	if year =~ /senior/ 
		return 4
	else 
		return 0
	end
end

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ cat year_codes.rb                 ruby circle_a        year_codes.rb
Enter the year: freshman
Numeric code is: 1
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
]Enter the year: sophomore
Numeric code is: 2
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
]0;sc94@maroon10: ~/214/labs/03[01;32msc94@maroon10[00m:[01;34m~/214/labs/03[00m$ exit
exit

Script done on 2023-01-23 21:00:18-05:00 [COMMAND_EXIT_CODE="0"]
