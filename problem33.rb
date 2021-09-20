# Problem:
# Write a function that searches an array of names (unsorted) for the name "Bob" and returns the location in the array. If Bob is not in the array, return -1.

# Examples
# find_bob(["Jimmy", "Layla", "Bob"]) ➞ 2

# find_bob(["Bob", "Layla", "Kaitlyn", "Patricia"]) ➞ 0

# find_bob(["Jimmy", "Layla", "James"]) ➞ -1

def find_bob(names)
	names.include?("Bob") ? names.find_index("Bob") : -1
end
p find_bob(["Jimmy", "Layla", "Bob"])
p find_bob(["Bob", "Layla", "Kaitlyn", "Patricia"])
p find_bob(["Jimmy", "Layla", "James"])
