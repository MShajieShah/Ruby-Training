# Given an array of strings depicting a row of buildings, create a function which sets the gap between buildings as a given amount.

# Examples
# widen_streets([
#   "###   ## #",
#   "### # ## #",
#   "### # ## #",
#   "### # ## #",
#   "### # ## #"
# ], 3) ➞ [
#   "###       ##   #",
#   "###   #   ##   #",
#   "###   #   ##   #",
#   "###   #   ##   #",
#   "###   #   ##   #"
# ]

# widen_streets([
#   "## ### ###",
#   "## ### ###",
#   "## ### ###",
#   "## ### ###"
# ], 2) ➞ [
#   "##  ###  ###",
#   "##  ###  ###",
#   "##  ###  ###",
#   "##  ###  ###"
# ]

# widen_streets([
#   "# # # # #"
# ], 2) ➞ [
#   "#  #  #  #  #"
# ]

def widen_streets(arr, n)
  arr.map { |a| a.gsub(/\s+/) { |s| s * n } }
end

p widen_streets(["# # # # #"], 2)
