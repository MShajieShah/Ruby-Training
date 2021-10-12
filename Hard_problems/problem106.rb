# Create a function that takes a string consisting of lowercase letters, uppercase letters and numbers and returns the string sorted in the same way as the examples below.

# Examples
# sorting("eA2a1E") ➞ "aAeE12"
# // Don't repeat letters.
	
# sorting("Re4r") ➞ "erR4"

# sorting("6jnM31Q") ➞ "jMnQ136"

# sorting("846ZIbo") ➞ "bIoZ468"
def sorting(s)
  index = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789"
  s.chars.sort_by { |x| index.index(x) }.join
end
p sorting("Re4r")