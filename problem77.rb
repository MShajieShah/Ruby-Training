# A positive number's population is the sum of 1's in its binary representation.
# An evil number has an even numbered population.
# An odious number has an odd numbered population.
# A number is pernicious if its population is a prime number.
# Create a function that takes a number as an argument and returns a sorted array of all its descriptors ("Evil",  "Odious", or "Pernicious").
# Examples
# how_bad(7) ➞ ["Odious", "Pernicious"]
# how_bad(17) ➞ ["Evil", "Pernicious"]
# how_bad(23) ➞ ["Evil"]
require "prime"

def how_bad(num)
  total = ((num.to_s(2)).to_i).digits.sum
  arr = []
  if total.prime?
    arr.push("Pernicious")
  end
  if total.even?
    arr.push("Evil")
  end
  if total.odd?
    arr.push("Odish")
  end
  return arr.sort
end

p how_bad(7)
p how_bad(17)
p how_bad(23)
