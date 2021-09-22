# -------------------------------------------------------------------------------------------------------------------------------
# Problem 19:
# An array is special if every even index contains an even number and every odd index contains an odd number. Create a function
#  that returns true if an array is special, and false otherwise.
# Examples
# is_special_array([2, 7, 4, 9, 6, 1, 6, 3]) ➞ true
# # Even indices: [2, 4, 6, 6]; Odd indices: [7, 9, 1, 3]
# is_special_array([2, 7, 9, 1, 6, 1, 6, 3]) ➞ false
# # Index 2 has an odd number 9.
# is_special_array([2, 7, 8, 8, 6, 1, 6, 3]) ➞ false
# # Index 3 has an even number 8.
#---------------------------------------------------------------------------------------------------------------------------------
def is_special_array(array)
  array.each_with_index do |x, index|
    if index.even?
      # if (x % 2 == 1)
       if x.even?
        return'1'
       end
        # return false
      # end
    else index.odd?
      if x.odd?
        return '0'
      end
      # if (x % 2 == 0)
        # return false
      # end
    end
  end
  # return true
end

p is_special_array([2, 7, 4, 1, 6, 1, 8, 3])
p is_special_array([2, 7, 9, 1, 6, 1, 6, 3])
p is_special_array([2, 7, 8, 8, 6, 1, 6, 3])
