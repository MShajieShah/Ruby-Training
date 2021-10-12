# There's a great war between the even and odd numbers. Many numbers already lost their life in this war and  it's your task
#  to end this. You have to determine which group sums larger: the even, or the odd. The larger  group wins.
# Create a function that takes an array of integers, sums the even and odd numbers separately, then returns the  difference
# between sum of even and odd numbers.
# Examples
# war_of_numbers([2, 8, 7, 5]) ➞ 2
# # 2 + 8 = 10
# # 7 + 5 = 12
# # 12 is larger than 10
# # So we return 12 - 10 = 2
# war_of_numbers([12, 90, 75]) ➞ 27
# war_of_numbers([5, 9, 45, 6, 2, 7, 34, 8, 6, 90, 5, 243]) ➞ 168

def war_of_numbers(arr)
  even_total = 0
  odd_total = 0
  for x in arr
    if x.even?
      even_total += x
    else
      odd_total += x
    end
  end
  return (even_total - odd_total).abs
end

p war_of_numbers([2, 8, 7, 5])
p war_of_numbers([5, 9, 45, 6, 2, 7, 34, 8, 6, 90, 5, 243])
p war_of_numbers([12, 90, 75])
