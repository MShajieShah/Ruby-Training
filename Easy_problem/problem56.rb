# Create a function that transforms sentences ending with multiple question marks ? or exclamation marks !
# into a sentence only ending with one without changing punctuation in the middle of the sentences.

# Examples
# no_yelling("What went wrong?????????") ➞ "What went wrong?"
# no_yelling("Oh my goodness!!!") ➞ "Oh my goodness!"
# no_yelling("I just!!! can!!! not!!! believe!!! it!!!") ➞ "I just!!! can!!! not!!! believe!!! it!"
# # Only change repeating punctuation at the end of the sentence.
# no_yelling("Oh my goodness!") ➞ "Oh my goodness!"
# # Do not change sentences where there exists only one or zero exclamation marks/question marks.
# no_yelling("I just cannot believe it.") ➞ "I just cannot believe it."
def no_yelling(str)
  str.gsub(/([!|?])+$/, '\1')
end
p no_yelling("What went wrong?????????")
p no_yelling("I just cannot believe it.") 