# Given an array of math expressions, create a function which sorts the array by their answer.
#  It should be sorted in ascending order.

# Examples
# sort_by_answer(["1 + 1", "1 + 7", "1 + 5", "1 + 4"]) ➞ ["1 + 1", "1 + 4", "1 + 5", "1 + 7"]

# sort_by_answer(["4 - 4", "2 - 2", "5 - 5", "10 - 10"]) ➞ ["4 - 4", "2 - 2", "5 - 5", "10 - 10"]

# sort_by_answer(["2 + 2", "2 - 2", "2 * 1"]) ➞ ["2 - 2", "2 * 1", "2 + 2"]

def sort_by_answer(arr)
  arr.sort_by { |y| eval(y.gsub("x", "*") + ".0") }
end

p sort_by_answer(["1 + 1", "1 + 7", "1 + 5", "1 + 4"])
