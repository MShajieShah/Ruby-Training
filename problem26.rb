#--------------------------------------------------------------------------------------------------------------
#  Problem 26:
# Create a function that returns true if the first array is a subset of the second. Return false otherwise.
# Examples
# is_subset([3, 2, 5], [5, 3, 7, 9, 2]) ➞ true
# is_subset([8, 9], [7, 1, 9, 8, 4, 5, 6]) ➞ true
# is_subset([1, 2], [3, 5, 9, 1]) ➞ false
# ----------------------------------------------------------------------------------------------------------

def is_subset(arr,b)
    if arr.all? { |i| b.include?(i) }
     return true
    else
     return false
    end
end
   
p is_subset([3, 2, 5], [5, 3, 7, 9, 2]) 
p is_subset([8, 9], [7, 1, 9, 8, 4, 5, 6]) 
p is_subset([1, 2], [3, 5, 9, 1]) 