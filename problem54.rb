# A value is omnipresent if it exists in every subarray inside the main array.

# To illustrate:

# [[3, 4], [8, 3, 2], [3], [9, 3], [5, 3], [4, 3]]
# # 3 exists in every element inside this array, so is omnipresent.

# Create a function that determines whether an input value is omnipresent for a given array.

# Examples
# is_omnipresent([[1, 1], [1, 3], [5, 1], [6, 1]], 1) ➞ true
# is_omnipresent([[1, 1], [1, 3], [5, 1], [6, 1]], 6) ➞ false
# is_omnipresent([[5], [5], [5], [6, 5]], 5) ➞ true
# is_omnipresent([[5], [5], [5], [6, 5]], 6) ➞ false

def is_omnipresent(array, a)
   array.all?{|x| x.include?(a)}
end
p is_omnipresent([[1, 1], [1, 3], [5, 1], [6, 1]], 1)
p is_omnipresent([[1, 1], [1, 3], [5, 1], [6, 1]], 6)