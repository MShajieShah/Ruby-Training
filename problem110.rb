# Create a function that takes an array and returns a string.
# 0 Repeat the actual decrypted value (using like this : 014 to repeat 14 times).
# Warning: When you start a repeat you can't stop it to add other numbers.
# 1, 2, 3, 4 = g, o, l, e
# 5 Corresponding to up case of letter before this.
# 6 Add a point to the end.
# 7 Change case of the first letter.
# 8 Reverse the string.
# 9 Clear the actual decrypted string.
# Examples
# num_to_google(["12213467"]) ➞ "Google."
# num_to_google(["12213467", "321"]) ➞ "Google.log"
# num_to_google(["12213467", "321", "122906"]) ➞ "Google.log"
# num_to_google(["15", "2502", "15", 3545]) ➞ "GOOGLE"
# num_to_google(["15", "2502", "15", 35, 45]) ➞ "GOOGLE"
# num_to_google([15, 202, 1, 3, 4]) ➞ "Google"
def num_to_google(arr)
  str = ""
  arr = (arr.join("")).split("")
  arr.each do |x|
    if x == "1"
      str << "g"
    elsif x == "2"
      str << "o"
    elsif x == "3"
      str << "l"
    elsif x == "4"
      str << "e"
    elsif x == "5"
      str.upcase!
    elsif x == "6"
      str += "."
    elsif x == "7"
      str.sub!(/^./, &:upcase)
    elsif x == "8"
      str.reverse!
    elsif x == "9"
      str = ""
    end
  end
  str
end

p num_to_google(["12213467"])
p num_to_google(["12213467", "321"])
p num_to_google(["15", "2502", "15", "3545"]) 
p num_to_google(["15", "2502", "15", "35", "45"])
p num_to_google(["15", "202", "1", "3", "4"]) 