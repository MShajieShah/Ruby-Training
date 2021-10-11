# In this challenge, you are given an array of one or more arithmetic operators and a array of numbers. Take each of the operators and mate it with any three separate numbers in the array to create a valid equation. Your answer should contain all possible equations.

# Examples
# jumbled(["+"], [2, 1, 3]) ➞ ["1+2=3"]

# jumbled(["+", "*"], [36, 28, 71, 4, 12, 7, 11]) ➞ ["4*7=28", "4+7=11"]

# Return your answer as an array sorted lexicographically.

def exp(op)
  ["+", "*", "&", "|", "^"].include?(op)
end

def eqn(eqns, arr, op, a, b)
  x = a
  if op == "/"
      x = x.to_f
  end
  res = eval("#{x}#{op}#{b}")
  if res.is_a?(Float) && res.to_i == res
      res = res.to_i
  end
  if arr.include?(res) && res != a && res != b
      if exp(op)
          a, b = [a, b].sort
      end
      eqns << "#{a}#{op}#{b}=#{res}"
  end 
end   

def jumbled(arr)
  eqns = []
arr[1].combination(2).each do |a,b|
      arr[0].each do |op|
          eqn(eqns, arr[1], op, a, b)
          if !exp(op)
              eqn(eqns, arr[1], op, b, a)
          end
      end
  end
  eqns.sort
end
p jumbled([["+"], [2, 1, 3]])
p jumbled([["+", "*"], [36, 28, 71, 4, 12, 7, 11]]) 
