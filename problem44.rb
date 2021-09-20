# Create two functions: a left-shift function and a right-shift function. Each function will take in an array and a
# single parameter: the number of shifts.

# [1, 2, 3, 4, 5]
# [2, 3, 4, 5, 1] # left shift of 1
# [5, 1, 2, 3, 4] # left shift of 4
# [5, 1, 2, 3, 4] # right shift of 1
# [3, 4, 5, 1, 2] # right shift of 3
# Examples
# left_shift([1, 2, 3, 4], 1) ➞ [2, 3, 4, 1]
# right_shift([1, 2, 3, 4], 1) ➞ [4, 1, 2, 3]
# left_shift([1, 2, 3, 4, 5], 3) ➞ [4, 5, 1, 2, 3]
# left_shift([1, 2, 3, 4, 5], 5) ➞ [1, 2, 3, 4, 5]
# You have fully shifted the array, you end up back where you began.

def right_shift(arr ,b)
  b.times {
     c = arr.delete_at(-1)
     arr = arr.unshift(c)
    }
    return arr
end
def left_shift(arr,b)
    b.times{
     c = arr.delete_at(0)
     arr = arr.push(c)
    }
    return arr
end
p left_shift([1,2,3,4,5],1)
p left_shift([1, 2, 3, 4, 5], 3)
p right_shift([1, 2, 3, 4], 1)
p left_shift([1, 2, 3, 4, 5], 6)