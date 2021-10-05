# A countdown sequence is a descending sequence of k integers from k down to 1 (e.g. 5, 4, 3, 2, 1). Write a function that returns an array [x, y] where x is the number that represents how many of countdown sequences are in a given array and y is an array of those sequences in order which they appear in the array.

# Examples
# final_countdown([4, 8, 3, 2, 1, 2]) ➞ [1, [[3, 2, 1]]]
# # In this example we have 1 countdown sequence: 3, 2, 1

# final_countdown([4, 4, 5, 4, 3, 2, 1, 8, 3, 2, 1]) ➞ [2, [[5, 4, 3, 2, 1], [3, 2, 1]]]
# # We have 2 countdown sequences:
# # 5, 4, 3, 2, 1 and 3, 2, 1

# final_countdown([4, 3, 2, 1, 3, 2, 1, 1]) ➞ [3, [[4, 3, 2, 1], [3, 2, 1], [1]]]
# # We have 3 countdown sequences:
# # 4, 3, 2, 1 ; 3, 2, 1 and 1

# final_countdown([1, 1, 2, 1]) ➞ [3, [[1], [1], [2, 1]]]

# final_countdown([]) ➞  [0, []]

def final_countdown(a)
  f = []
  s = []
  a.each do |v|
    if (s.last || v + 1) == v + 1
      s << v
      if v == 1
        f << s
        s = []
      end
    end
  end
  [f.size, f]
end

p final_countdown([1, 1, 2, 1])
