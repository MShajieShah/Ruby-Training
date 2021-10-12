# Create a function which takes a parameter mat, where mat is a matrix (Array of Arrays) such that all but one entry equals 0 (and the non-zero entry equals 1). The function, after being passed a matrix, should be repeatedly callable with the following String commands:

# 'up' ➞ Move the 1 to the cell above it.
# 'down' ➞ Move the 1 to the cell below it.
# 'left' ➞ Move the 1 to the cell to the left of it.
# 'right' ➞ Move the 1 to the cell to the right of it.
# 'stop' ➞ Return the resulting matrix.
# Examples
# one = [
#   [1]
# ]

# two = [
#   [1, 0],
#   [0, 0]
# ]

# # it should work for 1×1 matrices
# move(one)['up']['stop'] ➞ [
#   [1]
# ]

# # the 1 should wrap around
# move(two)['left']['stop'] ➞ [
#   [0, 1],
#   [0, 0]
# ]

# # it should accept multiple commands
# c ➞ [
#   [0, 0],
#   [0, 1]
# ]

# # it should return a function
# move(two).class ➞ Proc
# Notes
# The matrix can be of any size m×n, where m ≥ 1 and n ≥ 1.
# The 1 should be able to wrap around, e.g. if the non-zero entry is at the top of the matrix, calling the command 'up' should move it to the bottom of the matrix.
# The result of the original function move should be callable an arbitrary number of times.

def move(mat)
  Proc.new do |movement|
    case movement
    when "up" then move(mat.rotate(1))
    when "down" then move(mat.rotate(-1))
    when "left" then move(mat.map { |x| x.include?(1) ? x.rotate(1) : x })
    when "right" then move(mat.map { |x| x.include?(1) ? x.rotate(-1) : x })
    else mat
    end
  end
end

def matrix(m, n, x = 0, y = 0)
  m = (0...m).map { |_| [0] * n }
  m[y][x] = 1; m
end

one = matrix(1, 1)
two = matrix(2, 2)

p move(two)["right"]["down"]["stop"]
p move(two)["left"]["stop"]
