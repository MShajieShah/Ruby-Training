# Problem:
# Build a function that creates histograms. Every bar needs to be on a new line and its length corresponds to the numbers in the array passed as an argument. The second argument of the function represents the character that needs to be used.

# histogram(lst, char) -> str
# Examples
# histogram([1, 3, 4], "#") ➞ "#\n###\n####"
# #
# ###
# ####

def histogram(arr,ch)
   arr.map{ |x| ch*x }.join('  ')
end
p histogram([1,2,3], "#")