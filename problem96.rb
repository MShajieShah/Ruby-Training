# Mubashir needs to assemble a parcel of ordered chocolates. He got two types of chocolates:
# Small chocolates (2 grams each)
# Big chocolates (5 grams each)
# Create a function that takes three parameters: Number of small available chocolates n_small,
# number of big chocolates available n_big and desired weight (in grams) of the final parcel order.
# The function should return the required number of small chocolates to achieve the goal. The
# function should return -1 if the goal cannot be achieved by any possible combinations of small and big chocolates.
# Examples
# chocolates_parcel(4, 1, 13) ➞ 4
# 4 small chocolates = 8 grams
# 1 big chocolate = 5 grams
# 8 + 5 = 13 grams
# Required number of small chocolates = 4
# chocolates_parcel(4, 1, 14) ➞ -1
# You can not make any combination to reach 14 grams.
# chocolates_parcel(1, 1, 7) ➞ 1
# 1 big chocolate = 5 grams
# 1 small chocolates = 2 grams
# 5 + 2 = 7 grams
# Required number of small chocolates = 1

def chocolates_parcel(small, big, weight)
  a = 2 * small
  b = 5 * big
  if weight == a + b
    return small
  else
    return -1
  end
end

p chocolates_parcel(2, 1, 9)
p chocolates_parcel(4, 1, 14)
p chocolates_parcel(1, 1, 7)
