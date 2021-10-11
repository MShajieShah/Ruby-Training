# ----------------------------------------------------------------------------------------------------------------------------------
# Problem 9:
# Given an array and an integer n, return the sum of the first n numbers in the array.
# Worked Example
# sum_first_n_nums([9, 8, 7, 6], 3) ➞ 24
# # The parameter n is specified as 3.
# # The first 3 numbers in the list are 9, 8 and 7.
# # The sum of these 3 numbers is 24 (9 + 8 + 7).
# # Return the answer.
# Examples
# slice_sum([1, 3, 2], 2) ➞ 4
# slice_sum([4, 2, 5, 7], 4) ➞ 18
# slice_sum([3, 6, 2], 0) ➞ 0
# Notes
# If n is larger than the length of the array, return the sum of the whole array.
# ----------------------------------------------------------------------------------------------------------------------------------
def slice_sum(array,n)
    if n == 0
        return '0'
    elsif n > array.length 
        return "#{array}"
    else   
     array[0...n].sum
    end
end

puts slice_sum([1,2,3,4,5],3)
puts slice_sum([4, 2, 5, 7], 5)
puts slice_sum([3, 6, 2], 0)