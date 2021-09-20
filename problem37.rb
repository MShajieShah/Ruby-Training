# Write a function that transforms all letters from [a, m] to 0 and letters from [n, z] to 1 in a string.
# Examples
# convertBinary("house") ➞ "01110"
# convertBinary("excLAIM") ➞ "0100000"
# convertBinary("moon") ➞ "0111"

def convertBinary(word)
	letter={
		"0" => ('a'..'m').to_a,
		"1" => ('n'..'z').to_a	
	}
	new_word=''
	word.each_char do |x|
		if letter["0"].include?(x)
			new_word=new_word+'0'
		elsif letter["1"].include?(x)
			new_word=new_word+'1'
		else
			new_word=new_word+'0'
		end	
	end	
	new_word
end	

p convertBinary("house") 
p convertBinary("excLAIM")