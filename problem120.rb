# Create a function which returns the type of triangle, given the side lengths.
#  Return the following values if they match the criteria.
#   • No sides equal: "scalene"
#   • Two sides equal: "isosceles"
#   • All sides equal: "equilateral"
#   • Less or more than 3 sides given: "not a triangle"
# Examples
# get_triangle_type([2, 6, 5]) ➞ "scalene"

# get_triangle_type([4, 4, 7]) ➞ "isosceles"

# get_triangle_type([8, 8, 8]) ➞ "equilateral"

# get_triangle_type([3, 5, 5, 2]) ➞ "not a triangle"
def get_triangle_type(arr)
  if arr.length > 3 || arr.length < 3
    return "Not a triangle"
  else
    if ((arr[0] == arr[1]) && (arr[0] == arr[2]) && (arr[1] == arr[2]))
      return "equilateral"
    elsif ((arr[0] == arr[1]) || (arr[0] == arr[2]) || (arr[1] == arr[2]))
      return "isosceles"
    else
      return "scalene"
    end
  end
end
p get_triangle_type([2, 6, 5])
p get_triangle_type([4, 4, 7])
p get_triangle_type([8, 8, 8]) 
p get_triangle_type([3, 5, 5, 2])
