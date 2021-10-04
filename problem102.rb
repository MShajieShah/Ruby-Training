# You are given an array which may contain subarrays. Your task is to find the depth of the deepest
# subarray.
# [a] = 1 depth
# [[a]] = 2 depth
# [[[a]]] = 3 depth, etc
# Examples
# deepest([1, [2, 3], 4, [5, 6]])   2➞
# deepest([[[[[[[[[[1]]]]]]]]]])   10➞
# deepest([1, 4, [1, 4, [1, 4, [1, 4, [5]]]]])   5
def increment(str)
  if str.match(/\d./)
    str.succ
  else
    str << "1"
  end
end

p increment("foo009")
