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

