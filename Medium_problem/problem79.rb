# Create a function that validates whether a number n is within the bounds of lower and upper. 
# Return false if n  is not an integer. 
# Examples 
# intWithinBounds(3, 1, 9) ➞ true 
# intWithinBounds(6, 1, 6) ➞ false 
# intWithinBounds(4.5, 3, 8) ➞ false 
# Notes 
# Bounds will be always given as integers. 

def intWithinBounds(n,a,b)
  if n.is_a? Integer
    if n > a && n < b
      return true  
  end
end
return false
end
p intWithinBounds(3, 1, 9)
p intWithinBounds(6, 1, 6) 
p intWithinBounds(4.5, 3, 8)