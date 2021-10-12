# Given a string, create a function that outputs an array, building and deconstructing the string letter by letter.  See the examples below for some helpful guidance. 
# Examples 
# construct_deconstruct("Hello") ➞ [ 
#  "H", 
#  "He",
#  "Hel", 
#  "Hell", 
#  "Hello", 
#  "Hell", 
#  "Hel", 
#  "He", 
#  "H" 
# ] 
# construct_deconstruct("edabit") ➞ [  "e", 
#  "ed", 
#  "eda", 
#  "edab", 
#  "edabi", 
#  "edabit", 
#  "edabi", 
#  "edab", 
#  "eda", 
#  "ed", 
#  "e" 
# ] 
# construct_deconstruct("the sun") ➞ [  "t", 
#  "th", 
#  "the", 
#  "the ", 
#  "the s", 
#  "the su", 
#  "the sun", 
#  "the su", 
#  "the s", 
#  "the ",
#  "the", 
#  "th", 
#  "t" 
# ] 

def construct_deconstruct(str)
    arr = []
    i = 0
    while i < str.length
         arr << str[0..i]
         i += 1
    end
    arr[0..-1] + arr.reverse[1..-1]
end
p construct_deconstruct("the sun")
p construct_deconstruct("edabit")
p construct_deconstruct("Hello")