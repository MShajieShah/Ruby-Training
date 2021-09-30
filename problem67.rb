# Yasir is not so good with the English language. He needs your help to correct his sentences.
# Start each sentence with an uppercase alphabet.
# For every uppercase letter (other than the first alphabet), you have to place a fullstop(.) followed by an empty  space.
# There must be only one space between the words and sentences.
# Sentence must end with a full stop(.)
# Two continuous spaces are not allowed.
# correct_sentences (" mubashir loves edabit Matt loves edabit ") ➞ "Mubashir loves edabit. Matt loves  edabit."
# # Remove extra spaces.
# # Capitalise first character.
# # Dot followed by an empty space before "Matt".
# # A dot at the end.
# Examples
# correct_sentences (" mubashir loves edabit Matt loves edabit ") ➞ "Mubashir loves edabit. Matt loves  edabit."
# correct_sentences (" he is an engineer He sleeps a lot") ➞ "He is an engineer. He sleeps a lot."
# correct_sentences (" his english is not good Help him Thank you") ➞ "His english is not good. Help him.  Thank you."
def correct_sentences(s)
  new_sentence = ""
  arr = s.split(" ")
  i = 1
  while i < arr.length - 1
    arr[0] = arr[0].capitalize
    if arr[i + 1][0] == arr[i + 1][0].upcase
      arr[i] += "."
    end
    i += 1
  end
  new_sentence = arr.join(" ") + "."
  return new_sentence
end

p correct_sentences (" mubashir loves edabit Matt loves edabit ")
p correct_sentences (" he is an engineer He sleeps a lot")
p correct_sentences (" his english is not good Help him Thank you")
