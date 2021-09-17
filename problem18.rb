# -------------------------------------------------------------------------------------------------------------------------------
# Problem 18:
# Create a function which takes in a word and spells it out, by consecutively adding letters until the full word is completed.

# Examples
# spelling("bee") ➞ ["b", "be", "bee"]

# spelling("happy") ➞ ["h", "ha", "hap", "happ", "happy"]

# spelling("eagerly") ➞ ["e", "ea", "eag", "eage", "eager", "eagerl", "eagerly"]
# -------------------------------------------------------------------------------------------------------------------------------
def spelling(str)
	arr = []
	i = 0
	while i < str.length
		arr << str[0..i]
		i += 1
	end
	arr
end
p spelling("bee")
p spelling("happy")
p spelling("eagerly")