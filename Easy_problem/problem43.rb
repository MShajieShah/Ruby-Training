# Problem 21:
# Given an array and chunk size "n", create a function such that it divides the array into many subarrays where
# each subarray is of length size "n".

# Examples
# chunk([1, 2, 3, 4], 2) ➞ [
# [1, 2], [3, 4]
# ]
# chunk([1, 2, 3, 4, 5, 6, 7], 3) ➞ [
# [1, 2, 3], [4, 5, 6], [7]
# ]
# --------------------------------------------------------------------------------------------------------------
def chunk(array,n)
  puts "#{array.each_slice(n).to_a}"
end
chunk([1, 2, 3, 4], 2) 
chunk([1, 2, 3, 4, 5, 6, 7], 3)
chunk([1, 2, 3, 4 ,5], 10)
