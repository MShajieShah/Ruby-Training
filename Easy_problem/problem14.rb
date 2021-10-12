#------------------------------------------------------------------------------------------------------------------
#  Problem 14:
# Create a function that returns the product of all odd integers in an array.

# Examples
# odd_product([3, 4, 1, 1, 5]) ➞ 15

# odd_product([5, 5, 8, 2, 4, 32]) ➞ 25

# odd_product([1, 2, 1, 2, 1, 2, 1, 2]) ➞ 1
#------------------------------------------------------------------------------------------------------------------
def odd_product(arr)
  product = 1
  arr.each do |num|
     if num.odd?
  	   product *= num
     end
  end
   product
end

p odd_product([3, 4, 1, 1, 5])
p odd_product([5, 5, 8, 2, 4, 32]) 
p odd_product([1, 2, 1, 2, 1, 2, 1, 2])