# Create a function that takes a string, checks if it has the same number of x's and o's and returns  either true or false.
#  • Return a boolean value (true or false).
#  • Return true if the amount of x's and o's are the same.
#  • Return false if they aren't the same amount.
#  • The string can contain any character.
#  • When "x" and "o" are not in the string, return true.
# Examples
# XO("ooxx") ➞ true
# XO("xooxx") ➞ false
# XO("ooxXm") ➞ true
# # Case insensitive.
# XO("zpzpzpp") ➞ true
# # Returns true if no x and o.
# XO("zzoo") ➞ false

def xoequal(s)
  s = s.downcase
  if s.count('x') != s.count('o')
    puts false
  elsif s.count('x') < 0 || s.count('o') < 0 || s.count('x') == s.count('o')
    puts true
  end
end
xoequal("ooxx")
xoequal("xooxx")
xoequal("ooxXm")
xoequal("zpzpzpp")
xoequal("zzoo")