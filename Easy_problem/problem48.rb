# Create a function that returns the number of hashes and pluses in a string.
# Examples
# hashPlusCount("###+") ➞ [3, 1]
# hashPlusCount("##+++#") ➞ [3, 3]
# hashPlusCount("#+++#+#++#") ➞ [4, 6]
# hashPlusCount("") ➞ [0, 0]

def hashPlusCount(a)
    [(a.count("#")),(a.count("+"))]
end
p hashPlusCount("###+")
p hashPlusCount("##+++#")
p hashPlusCount("#+++#+#++#") 
p hashPlusCount("")