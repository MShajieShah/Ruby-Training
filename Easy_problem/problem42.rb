# Create a function that determines whether a number is Oddish or Evenish. A number is Oddish if the sum of
# all of its digits is odd, and a number is Evenish if the sum of all of its digits is even. If a number is Oddish,
# return "Oddish". Otherwise, return "Evenish".

# For example, oddishOrEvenish(121) should return "Evenish", since 1 + 2 + 1 = 4. oddishOrEvenish(41)
# should return "Oddish", since 4 + 1 = 5.

# Examples
# oddishOrEvenish(43) ➞ "Oddish"
# oddishOrEvenish(373) ➞ "Oddish"
# oddishOrEvenish(4433) ➞ "Evenish"

def oddishOrEvenish(num)
  b = num.to_s.split("")
  c =b.inject(0) {|s,e| s.to_i + e.to_i }
  if c.odd?
     return "Oddish"
  else c.even?
     return "Evenish"
  end
end
p oddishOrEvenish(43)
p oddishOrEvenish(373)
p oddishOrEvenish(4433)