# Write a function that divides an array into chunks of size n, where n is the length of each chunk. 
# Examples 
# chunkify([2, 3, 4, 5], 2) ➞ [[2, 3], [4, 5]] 
# chunkify([2, 3, 4, 5, 6], 2) ➞ [[2, 3], [4, 5], [6]] 
# chunkify([2, 3, 4, 5, 6, 7], 3) ➞ [[2, 3, 4], [5, 6, 7]] 
# chunkify([2, 3, 4, 5, 6, 7], 1) ➞ [[2], [3], [4], [5], [6], [7]] 
# chunkify([2, 3, 4, 5, 6, 7], 7) ➞ [[2, 3, 4, 5, 6, 7]] 
def chunk(array,n)
    puts "#{array.each_slice(n).to_a}"
end
 chunk([2, 3, 4, 5], 2) 
 chunk([2, 3, 4, 5, 6, 7], 1)
 chunk([2, 3, 4, 5, 6, 7], 3)