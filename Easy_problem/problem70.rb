# Create a function that counts the number of adverbs in a sentence. An adverb is a word that ends with ly.
# Examples
# count_adverbs("She ran hurriedly towards the stadium.") ➞ 1
# count_adverbs("She ate the lasagna heartily and noisily.") ➞ 2
# count_adverbs("He hates potatoes.") ➞ 0
# count_adverbs("He was happily, crazily, foolishly over the moon.") ➞ 3
# Notes
# Do NOT count words where the ly is in the beginning or the middle (e.g. Lysol, Illya). For the purpose of this exercise, ignore the nuances of the English language (some adjectives also end in ly).

def count_adverbs(sentence)
  count = 0
  arr = sentence.split(" ")
  arr.each do |word|
    if word.end_with?("ly") || word.end_with?("ly.") || word.end_with?("ly,")
      count = count + 1
    end
  end
  return count
end

p count_adverbs("She ran hurriedly towards the stadium.")
p count_adverbs("She ate the lasagna heartily and noisily.")
p count_adverbs("He hates potatoes.")
p count_adverbs("He was happily, crazily, foolishly over the moon.")
