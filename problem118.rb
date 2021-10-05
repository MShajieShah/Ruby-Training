# In this challenge, you are given an array of one or more arithmetic operators and a array of numbers. Take each of the operators and mate it with any three separate numbers in the array to create a valid equation. Your answer should contain all possible equations.

# Examples
# jumbled(["+"], [2, 1, 3]) ➞ ["1+2=3"]

# jumbled(["+", "*"], [36, 28, 71, 4, 12, 7, 11]) ➞ ["4*7=28", "4+7=11"]

# Return your answer as an array sorted lexicographically.

def jumbled(exp, arr)
  exp = exp.join.split("")
  arr = arr.sort
  exp.each do |x|
    if x == "+"
      return arr.include?(arr[0] + arr[1])
    elsif x == "-"
      return arr.include?(arr[0] - arr[1])
    elsif x == "*"
      return arr.include?(arr[0] * arr[1])
    elsif x == "/"
      return arr.include?(arr[0] * arr[1])
    end
  end
end
p jumbled(["+"], [2, 1, 3])
p jumbled(["+", "*"], [36, 28, 71, 4, 12, 7, 11]) 
