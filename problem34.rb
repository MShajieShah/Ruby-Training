# Create a function that takes two arguments: an array arr and a number num. If an element occurs in arr more than num times, remove the extra occurrence(s) and return the result.
# Examples
# delete_occurrences([1, 1, 1, 1], 2) ➞ [1, 1]
# delete_occurrences([13, true, 13, nil], 1) ➞ [13, true, nil]
# delete_occurrences([true, true, true], 3) ➞ [true, true, true]

def delete_occurrences(arr, num)
  arr.each do |value|
  	 if arr.count(value) > num
  	  arr_reverse = arr.reverse
  	  arr_index = arr.size - arr_reverse.index(value) - 1
  	  arr.delete_at(arr_index)
  	 end
  end
  arr
end
p delete_occurrences([1,1,1,1],2)
p delete_occurrences([13, true, 13, nil],1)