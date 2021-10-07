# Create a function that given an array, it returns the index where if split in two-subarrays (last element of the first array has index of (foundIndex-1)), the sum of them are equal.
# Examples
# twins([10, 20, 30, 5, 40, 50, 40, 15]) ➞ 5
# # foundIndex 5 : [10+20+30+5+40]=[50+40+15]

# twins([1, 2, 3, 4, 5, 5]) ➞ 4
# # [1, 2, 3, 4] [5, 5]

# twins([3, 3]) ➞ 1
# Notes
# Return only the foundIndex, not the divided array.
def twins(arr)
	left = 0
	right = arr.length - 1
	lSum = arr[0]
	rSum = arr[-1]
	while right - left > 0
		if lSum > rSum
			right -= 1
			rSum += arr[right]
		elsif rSum > lSum
			left += 1
			lSum += arr[left]
		else
			right -= 1
			rSum += arr[right]
			left += 1
			lSum += arr[left]
		end
	end
	return left
end
p twins([10,20,30,40,5,50,40,15])