# ---------------------------------------------------------------------------------------------------------------------------------
# Problem 3:
# Create a function that takes three integer arguments (a, b, c) and returns the amount of integers which are of equal value.
# Examples
# equal(3, 4, 3) ➞ 2
# equal(1, 1, 1) ➞ 3
# equal(3, 4, 1) ➞ 0
# ----------------------------------------------------------------------------------------------------------------------------------
def equal(a,b,c)
    if a==b && a==c
        return 3
    elsif a==b||a==c
        return 2
    else
        return 0
    end
end
puts equal(3, 4, 3)
puts equal(1, 1, 1)
puts equal(3, 4, 1)
