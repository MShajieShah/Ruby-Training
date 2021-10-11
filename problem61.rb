# Create a function that returns the total number of steps it takes to transform each element to the maximal  element in the array. Each step consists of incrementing a digit by one. 
# Examples 
# increment_to_top([3, 4, 5]) ➞ 3 
# # Maximal element in the array is 5. 
# # To transform 3 to 5 requires 2 steps: 3 -> 4, 4 -> 5. 
# # To transform 4 to 5 requires 1 step: 4 -> 5. 
# # Total steps required is 3. 
# increment_to_top([4, 3, 4]) ➞ 1 
# # Maximal element in the array is 4. 
# # To transform 3 to 4 requires 1 steps: 3 -> 4.
# # Total steps required is 1. 
# increment_to_top([3, 3, 3]) ➞ 0 
# increment_to_top([3, 10, 3]) ➞ 14 
def increment_to_top(arr)
    b = arr.max
    a = []
    c = arr.select{|x| x<5}
    c.each do |y|
       if y < b
         a << (b-y)
       end
    end
 return a.sum
end
p increment_to_top([4, 3, 4])
p increment_to_top([3, 4, 5])
p increment_to_top([3, 10, 3]) 