# Create a function that returns true if an asterisk * is inside a box.
# Examples
# inBox([
# "###",
# "#*#",
# "###"
# ]) ➞ true
def inBox(arr)
	arr.join.include? '*'
end
p inBox(["###","##","###"])
p inBox([
    "*####",
    "# #",
    "# #*",
    "####"
    ])
p inBox([
    "#####",
    "# #",
    "# #",
    "# #",
    "#####"
    ])

p inBox([
    "###",
    "#*#",
    "###"
    ])