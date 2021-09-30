# Given an array of math expressions, create a function which sorts the array by their answer.
#  It should be sorted in ascending order.

# Examples
# sort_by_answer(["1 + 1", "1 + 7", "1 + 5", "1 + 4"]) ➞ ["1 + 1", "1 + 4", "1 + 5", "1 + 7"]

# sort_by_answer(["4 - 4", "2 - 2", "5 - 5", "10 - 10"]) ➞ ["4 - 4", "2 - 2", "5 - 5", "10 - 10"]

# sort_by_answer(["2 + 2", "2 - 2", "2 * 1"]) ➞ ["2 - 2", "2 * 1", "2 + 2"]

# def sort_by_answer(arr)
# arr.each { |x|
#   p x.split(' ')
# }
# end
# p sort_by_answer(["2 + 2", "2 - 2", "2 * 1"])
# def sort_by_answer(arr)
# 	arr2 = []
# 	idx = 0
# 	arr.each{ |exp|
# 		exp2 = exp.gsub "x", "*"
# 		exp2 = "1.0 * " + exp2
# 		res = eval(exp2)
# 		arr2 << [exp, idx, res]
# 		idx += 1
# 	}
# 	arr2 = arr2.sort_by {|a,b,c| [c,b]}
# 	ret = []
# 	arr2.each{ |a,b,c| ret << a }
# 	return ret
# end

p sort_by_answer(["2 + 2", "2 - 2", "2 * 1"])