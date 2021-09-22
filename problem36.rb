# Problem:
# Create a function that takes an array arr and a number n and returns an array of two integers from arr whose product equals n.

# Examples
# two_product([1, 2, -1, 4, 5], 20) ➞ [4, 5]

# two_product([1, 2, 3, 4, 5], 10) ➞ [2, 5]

# two_product([100, 12, 4, 1, 2], 15) ➞ nil

def two_product(arr, n)
  m = []
  arr.each do |i|
    if n % i == 0
      return [n / i, i] 
      if m.include?(i)
       m << n / i
     end
  end
  nil
end
p two_product([1, 2, -1, 4, 5], 20) 
p two_product([1, 2, 3, 4, 5], 10)
p two_product([100, 12, 4, 1, 2], 15) 