# Create a function that groups an array of numbers based on a size parameter. The size represents 
# the  maximum length of each sub-array. 
# [1, 2, 3, 4, 5, 6], 3 
# [[1, 3, 5], [2, 4, 6]] 
# # Divide array into groups of size 3. 
# [1, 2, 3, 4, 5, 6], 2 
# [[1, 4], [2, 5], [3, 6]] 
# # Divide array into groups of size 2. 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 4 
# [[1, 4, 7, 10], [2, 5, 8, 11], [3, 6, 9]] 
# # "Leftover" arrays are okay. 
# Examples 
# group([1, 2, 3, 4], 2) ➞ [[1, 3], [2, 4]] 
# group([1, 2, 3, 4, 5, 6, 7], 4) ➞ [[1, 3, 5, 7], [2, 4, 6]] 
# group([1, 2, 3, 4, 5], 1) ➞ [[1], [2], [3], [4], [5]] 
# group([1, 2, 3, 4, 5, 6], 4) ➞ [[1, 3, 5], [2, 4, 6]]
def group(array,n)
    "#{array.each_slice(n).to_a}"
  end  
p group([1, 2, 3, 4,5,6],3)
p group([1, 2, 3, 4, 5, 6, 7],4)
p group([1, 2, 3, 4, 5], 1) 
p group([1, 2, 3, 4, 5, 6], 2) 