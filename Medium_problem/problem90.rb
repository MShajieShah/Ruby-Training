# Carlos is a huge fan of something he calls smooth sentences.
# A smooth sentence is one where the last letter of each word is identical to the first letter the following word  (and not case sensitive, so "A" would be the same as "a").
# The following would be a smooth sentence "Carlos swam masterfully" because "Carlos" ends with an "s"  and swam begins with an "s" and swam ends with an "m" and masterfully begins with an "m".
# Create a function that determines whether the input sentence is a smooth sentence, returning a boolean value  true if it is, false if it is not.
# Examples
# is_smooth("Marta appreciated deep perpendicular right trapezoids") ➞ true
# is_smooth("Someone is outside the doorway") ➞ false
# is_smooth("She eats super righteously") ➞ true

def is_smooth(sentence)
  sentence = sentence.split(" ")
  a = [sentence[0]]
  sentence[1..-1].each do |x|
    if x.downcase[0] == a.last[-1]
      a << x
    else
      return false
    end
  end
  true
end

p is_smooth("She eats super righteously")
