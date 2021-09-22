# Problem 13:
# Create a function that transforms a string of upvote counts into an array of numbers. Each k represents a thousand.

# Examples
# transform_upvotes("6.8k 13.5k") ➞ [6800, 13500]

# transform_upvotes("5.5k 8.9k 32") ➞ [5500, 8900, 32]

# transform_upvotes("20.3k 3.8k 7.7k 992") ➞ [20300, 3800, 7700, 992]

def transform_upvotes(str)
	a = ".k"
  arr = str.split(" ").map do |x|
    if x.include?(".")
      (x.delete(a.downcase) + "00").to_i
    else
      x.to_i
    end
  end
  arr
end

p transform_upvotes("6.8k 13.5k")
p transform_upvotes("5.5k 8.9 32")
p transform_upvotes("20.3k 3.8k 7.7k 992")
