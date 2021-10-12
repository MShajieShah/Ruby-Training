# Problem:
# Write a function that takes three arguments (x, y, z) and returns an array containing x subarrays (e.g. [[], [], []]), each containing y number of item z.

# x Number of subarrays contained within the main array.
# y Number of items contained within each subarray.
# z Item contained within each subarray.
# Examples
# matrix(3, 2, 3) ➞ [[3, 3], [3, 3], [3, 3]]

# matrix(2, 1, "edabit") ➞ [["edabit"], ["edabit"]]

# matrix(3, 2, 0) ➞ [[0, 0], [0, 0], [0, 0]]

def matrix(a,b,c)
 a.times {|i| p i.inspect, ( Array.new b , c)}
end
matrix(3, 2, 3)
matrix(2, 1, "edabit")
matrix(3, 2, 0)