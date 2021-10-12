# ----------------------------------------------------------------------------------------------------------------------
# Problem 27:
# Write a function that converts a hash into a array of keys and values.

# Examples
# hash_to_array({
#   D: 1,
#   B: 2,
#   C: 3
# }) ➞ [[:B, 2], [:C, 3], [:D, 1]]

# hash_to_array({
#   likes: 2,
#   dislikes: 3,
#   followers: 10
# }) ➞ [[:dislikes, 3], [:followers, 10], [:likes, 2]]
# ------------------------------------------------------------------------------------------------------------------------
def hash_to_array(hash)
  "#{hash.to_a}"
end
p hash_to_array({D: 1,B: 2,C: 3})
p hash_to_array({likes: 2,dislikes: 3,followers: 10})