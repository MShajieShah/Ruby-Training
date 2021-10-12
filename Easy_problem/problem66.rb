# Create a function that returns the sum of missing numbers.
# Examples
# sum_missing_numbers([1, 3, 5, 7, 10]) ➞ 29
# # 2 + 4 + 6 + 8 + 9
# sum_missing_numbers([10, 7, 5, 3, 1]) ➞ 29
# sum_missing_numbers([10, 20, 30, 40, 50, 60]) ➞ 1620
def sum_missing_numbers(arr)
  b = arr.max
  ((1..b).to_a - arr).sum
end

p sum_missing_numbers([1, 3, 5, 7, 10])
p sum_missing_numbers([10, 7, 5, 3, 1])
p sum_missing_numbers([10, 20, 30, 40, 50, 60])
