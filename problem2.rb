# -----------------------------------------------------------------------------------------------------------------------
# Problem 2:
# Create a function that takes a string and returns a new string with its first and last characters swapped, except
# under three conditions:
# If the length of the string is less than two, return "Incompatible.".
# If the argument is not a string, return "Incompatible.".
# If the first and last characters are the same, return "Two's a pair.".
# Examples
# flip_end_chars("Cat, dog, and mouse.") ➞ ".at, dog, and mouseC"
# flip_end_chars("ada") ➞ "Two's a pair."
# flip_end_chars("Ada") ➞ "adA"
# flip_end_chars("z") ➞ "Incompatible."
# flip_end_chars([1, 2, 3]) ➞ "Incompatible."
#------------------------------------------------------------------------------------------------------------------------
def flip_end_chars(a)
  if a.is_a? Array
      puts "Incompatiable"
  elsif a.length==1
      puts "Incompatiable"
  elsif a.slice(0) == a.slice(-1)
      puts "Two Pairs"
  elsif a.length<2        
      puts "Incompatiable"
  else
      b=a.split('')
      c=b.shift()
      d=b.pop
      b.unshift(d)
      b.push(c)
      puts b.join("")   
       
  end
  
end
flip_end_chars("Cats, dogs and mouse.")
flip_end_chars("Ada")
flip_end_chars([1, 2, 3])
flip_end_chars("A")
flip_end_chars("AdA")