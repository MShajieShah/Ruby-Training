# Problem 23:
# Write a function that moves all elements of one type to the end of the array.

# Examples
# move_to_end([1, 3, 2, 4, 4, 1], 1) ➞ [3, 2, 4, 4, 1, 1]
# # Move all the 1s to the end of the array.

# move_to_end([7, 8, 9, 1, 2, 3, 4], 9) ➞ [7, 8, 1, 2, 3, 4, 9]

# move_to_end(["a", "a", "a", "b"], "a") ➞ ["b", "a", "a", "a"]


def move_to_end(a, el)
	a.sort_by{|x| x == el ? 1 : 0}
end
p move_to_end([1, 3, 2, 4, 4, 1], 1)
p move_to_end([7, 8, 9, 1, 2, 3, 4], 9)
p move_to_end(["a", "a", "a", "b"], "a") 