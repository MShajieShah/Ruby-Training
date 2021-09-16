# --------------------------------------------------------------------------------------------------------------------------------
# Problem 6:
# In each input array, every number repeats at least once, except for two. Write a function that returns the two unique numbers.
# Examples	
# returnUnique([1, 9, 8, 8, 7, 6, 1, 6]) ➞ [9, 7]
# returnUnique([5, 5, 2, 4, 4, 4, 9, 9, 9, 1]) ➞ [2, 1]
# returnUnique([9, 5, 6, 8, 7, 7, 1, 1, 1, 1, 1, 9, 8]) ➞ [5, 6]
# --------------------------------------------------------------------------------------------------------------------------------

def returnUnique(array)
	arr=[]
	array.each do |a|
	 	if array.count(a)==1
	 		arr.push(a)
	 	end	
	end
	arr
end
p returnUnique([1, 9, 8, 8, 7, 6, 1, 6])
p returnUnique([5, 5, 2, 4, 4, 4, 9, 9, 9, 1])
p returnUnique([9, 5, 6, 8, 7, 7, 1, 1, 1, 1, 1, 9, 8]) 