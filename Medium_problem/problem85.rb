# Create a function that returns true if an input array can be completely sorted by only sorting 
# within the  bounds [0, n] (inclusive), where n is smaller than or equal to the array's length, and false otherwise. 
# Examples 
# bound_sort([1, 6, 5, 3, 8, 9], [0, 3]) ➞ true 
# # If [1, 6, 5, 3] is sorted to [1, 3, 5, 6], the array is completely sorted. 
# bound_sort([1, 6, 5, 3, 8, 9], [0, 2]) ➞ false 
# # Even if [1, 6, 5] is sorted to [1, 5, 6], the array is still not completely sorted. 
# bound_sort([1, 9, 2, 5, 7], [0, 4]) ➞ true 
# bound_sort([1, 9, 2, 5, 7], [0, 3]) ➞ false 
# # Sorting from [0, 3] gives us [1, 2, 5, 9, 7], array still not completely sorted. 

def bound_sort(a, b)
  s = a[b[0]..b[1]]
  a.sort == s.sort + (a - s)
end
p bound_sort([1, 9, 2, 5, 7], [0, 4])