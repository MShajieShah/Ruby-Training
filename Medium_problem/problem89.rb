# What do the numbers 4, 6, 8, 9 and 0 have in common? They all have holes in them! Notice how the number  8 contains not one, but two holes.
#   Given an array of numbers, sort the array in accordance to how many holes occur in the number. It should be  sorted in ascending order.
#   Examples
#   holey_sort([44, 4, 444, 4444]) ➞ [4, 44, 444, 4444]
#   holey_sort([100, 888, 1660, 11]) ➞ [11, 100, 1660, 888]
#   holey_sort([8, 121, 41, 66]) ➞ [121, 41, 8, 66]
def holey_sort(arr)
  holes = [1, 0, 0, 0, 1, 0, 1, 0, 2, 1]
  arr.sort_by { |x| x.to_s.chars.map { |n| holes[n.to_i] }.inject(:+) }
end
p holey_sort([44, 4, 444, 4444])
p  holey_sort([100, 888, 1660, 11])