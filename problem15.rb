# ------------------------------------------------------------------------------------------
# Problem 15:
# Given an integer array, transform it into a mirror.

# Examples
# mirror([0, 2, 4, 6]) ➞ [0, 2, 4, 6, 4, 2, 0]

# mirror([1, 2, 3, 4, 5]) ➞ [1, 2, 3, 4, 5, 4, 3, 2, 1]

# mirror([3, 5, 6, 7, 8]) ➞ [3, 5, 6, 7, 8, 7, 6, 5, 3]
# -------------------------------------------------------------------------------------------



def mirror(array)
    array1 = array.reverse[1...(array.length)]
    return array+array1
end
p mirror([0, 2, 4, 6])
p mirror([1, 2, 3, 4, 5])
p mirror([3, 5, 6, 7, 8])