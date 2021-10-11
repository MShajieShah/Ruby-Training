# Create a function that returns a capitalized version of the string passed. The first letter of each word in the
# string should be capitalized while the rest of each word should be lowercase.

# Examples
# emphasise("hello world") ➞ "Hello World"
# emphasise("GOOD MORNING") ➞ "Good Morning"
# emphasise("99 red balloons!") ➞ "99 Red Balloons!"
def emphasise(str)
  str.split.map(&:capitalize).join(" ")
end

p emphasise("hello world")
p emphasise("GOOD MORNING")
p emphasise("99 red balloons!")
