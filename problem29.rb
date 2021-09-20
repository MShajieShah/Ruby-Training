# Problem 29:
# Create a function which concantenates the number 7 to the end of every chord in an array. Ignore all chords which already end with 7.

# Examples
# jazzify(["G", "F", "C"]) ➞ ["G7", "F7", "C7"]

# jazzify(["Dm", "G", "E", "A"]) ➞ ["Dm7", "G7", "E7", "A7"]

# jazzify(["F7", "E7", "A7", "Ab7", "Gm7", "C7"]) ➞ ["F7", "E7", "A7", "Ab7", "Gm7", "C7"]

# jazzify([]) ➞ []

def jazzify(arr)
  arr.each do |item| 
    if item.include?("7")
		  return arr
	  else
  	  item << "7"
    end
  end
	return arr
end
p jazzify(["G", "F", "C"])
p jazzify(["Dm", "G", "E", "A"])
p jazzify(["F7", "E7", "A7", "Ab7", "Gm7", "C7"]) 
p jazzify([]) 