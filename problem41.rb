# Create a function that takes a number as input and returns true if the sum of its digits has the same parity as
# the entire number. Otherwise, return false.
# Examples
# parityAnalysis(243) ➞ true
# // 243 is odd and so is 9 (2 + 4 + 3)
# parityAnalysis(12) ➞ false
# // 12 is even but 3 is odd (1 + 2)
# parityAnalysis(3) ➞ true
# // 3 is odd and 3 is odd and 3 is odd (3)
def parityAnalysis(int)
  b = int.to_s.split("")
  c =b.inject(0) {|s,e| s.to_i + e.to_i }
  if c.odd? == int.odd?
     return true
  elsif c.even? == int.even?
     return true
  else
     return false
  end
end
p parityAnalysis(3)
p parityAnalysis(12) 
p parityAnalysis(243)