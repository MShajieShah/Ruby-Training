# Create a function that takes three collections of arguments and returns the sum of the product of numbers.
# Examples
# product(1,2)(1,1)(2,3) ➞ 8
#  1 * 1 * 2 + 2 * 1 * 3
# product(10,2)(5,0)(2,3) ➞ 100
#  10 * 5 * 2 + 2 * 0 * 3
# product(1,2)(2,3)(3,4) ➞ 30
#  1 * 2 * 3 + 2 * 3 * 4
# product(1,2)(0,3)(3,0) ➞ 0
#  1 * 0 * 3 + 2 * 3 * 0
def product(a,b,c)
 (a[0]*b[0]*c[0])+ (a[1]*b[1]*c[1])
end
p product([1,2],[1,1],[2,3])
p product([10,2],[5,0],[2,3])
p product([1,2],[2,3],[3,4])