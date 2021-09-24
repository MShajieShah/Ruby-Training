# Create a function that takes a sequence of either strings or integers, removes the surrounding duplicates and  
# returns an array of items without any items with the same value next to each other and preserves 
# the original  order of items. 
# Examples 
# unique_in_order("AAAABBBCCDAABBB") ➞ ["A", "B", "C", "D", "A", "B"] 
# unique_in_order("ABBCcAD") ➞ ["A", "B", "C", "c", "A", "D"] 
# unique_in_order([1, 2, 2, 3, 3]) ➞ [1, 2, 3] 
def unique_in_order(str)
  if str.class== String
    a = (str.squeeze).split('')
  else
    return (str.join('')).squeeze.split('')
  end
end
p unique_in_order("AAAABBBCCDAABBB")
p unique_in_order("ABBCcAD")
p unique_in_order([1, 2, 2, 3, 3]) 