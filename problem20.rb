# -----------------------------------------------------------------------------------------------------------------------------
# Problem 20:
# Write a function that reverses the subarray between the start and end index (inclusive). The rest of the array should be kept 
# # the same.

# Examples
# ranged_reversal([1, 2, 3, 4, 5, 6], 1, 3) ➞ [1, 4, 3, 2, 5, 6]

# ranged_reversal([1, 2, 3, 4, 5, 6], 0, 4) ➞ [5, 4, 3, 2, 1, 6]

# ranged_reversal([9, 8, 7, 4], 0, 0) ➞ [9, 8, 7, 4]
#--------------------------------------------------------------------------------------------------------------------------- 


def ranged_reversal(arr,a,b)
    arr[a..b] = arr[a..b].reverse
    arr
end
p ranged_reversal([1, 2, 3, 4, 5, 6], 1, 3) 
p ranged_reversal([1, 2, 3, 4, 5, 6], 0, 4)
p ranged_reversal([9, 8, 7, 4], 0, 0)