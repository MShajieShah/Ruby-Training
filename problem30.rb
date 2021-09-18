# // Problem 30:
# // In this challenge you will receive an input of the form:

# // [[[[[[[[[[[]]]]]]]]]]]
# // In other words, an array containing an array containing an array containing... an array containing nothing.

# // Your goal is to measure the depth of this array, where [] has a depth 1, [[]] has depth of 2, [[[]]] has depth 3, etc.

# // Examples
# // depth([]) ➞ 1

# // depth([[]]) ➞ 2

# // depth([[[]]]) ➞ 3

# // depth([[[[[[[[[[[]]]]]]]]]]]) ➞ 11

def depth(str)
    a = str.to_s
    a = a.split("")
     a.count("[")
   end
   
   p depth([])
   p depth([[]])
   p depth([[[]]]) 
   p depth([[[[[[[[[[[]]]]]]]]]]])