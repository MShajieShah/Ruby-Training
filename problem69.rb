# Create a function that returns true if an asterisk * is inside a box. 
# Examples 
# in_box([ 
#  "###", 
#  "#*#", 
#  "###" 
# ]) ➞ true 
# in_box([ 
#  "####", 
#  "#* #", 
#  "# #", 
#  "####"
# ]) ➞ true 
# in_box([ 
#  "*####", 
#  "# #", 
#  "# #*", 
#  "####" 
# ]) ➞ false 
# in_box([ 
#  "#####", 
#  "# #", 
#  "# #", 
#  "# #", 
#  "#####" 
# ]) ➞ false
def inBox(arr)
	arr.join.include? '*'
end
p inBox(["###","##","###"])
p inBox(["*####","# #","# #*","####"])
p inBox(["#####","# #","# #","# #","#####"])
p inBox(["###","#*#","###"])