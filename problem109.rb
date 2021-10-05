# Given an array of seats, return the maximum number of new people which can be seated, as long as there is at least a gap of 2 seats between people.

# Empty seats are given as 0.
# Occupied seats are given as 1.
# Don't move any seats which are already occupied, even if they are less than 2 seats apart. Consider only the gaps between new seats and existing seats.
# Examples
# maximum_seating([0, 0, 0, 1, 0, 0, 1, 0, 0, 0]) ➞ 2
# # [1, 0, 0, 1, 0, 0, 1, 0, 0, 1]

# maximum_seating([0, 0, 0, 0]) ➞ 2
# # [1, 0, 0, 1]

# maximum_seating([1, 0, 0, 0, 0, 1]) ➞ 0
# # There is no way to have a gap of at least 2 chairs when adding someone else.

def maximum_seating(arr)
  ("00" + arr.join + "00").split("1").map { |s| [(s.size - 2) / 3, 0].max }.inject(:+)
end

p maximum_seating([0, 0, 0, 1, 0, 0, 1, 0, 0, 0])
p maximum_seating([0, 0, 0, 0])
p maximum_seating([1, 0, 0, 0, 0, 1])
