# Create a function which returns the next letters alphabetically in a given string.
# If the last letter is a "Z", change the rest of the letters accordingly.
# # Examples
# next_letters("A") ➞ "B"

# next_letters("ABC") ➞ "ABD"

# next_letters("Z") ➞ "AA"

# next_letters("CAZ") ➞ "CBA"

# next_letters("") ➞ "A"
def next_letters(str)
  if str.empty?
    str << "A"
  else
    str.succ
  end
end

p next_letters("A")
p next_letters("ABC")
p next_letters("Z")
p next_letters("CAZ")
p next_letters("")
