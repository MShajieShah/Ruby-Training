# This challenge is an English twist on the Japanese word game Shiritori. The basic premise is to follow two  rules:
# First character of next word must match last character of previous word.
# The word must not have already been said.
# Below is an example of a Shiritori game:
# ["word", "dowry", "yodel", "leader", "righteous", "serpent"] # valid!
# ["motive", "beach"] # invalid! - beach should start with "e"
# ["hive", "eh", "hive"] # invalid! - "hive" has already been said
# Write a Shiritori class that has two instance variables:
# @words: an array of words already said.
# @game_over: a boolean that is true if the game is over.
# and two instance methods:
# play: a method that takes in a word as an argument and checks if it is valid (the word should follow rules #1  and #2 above).
# If it is valid, it adds the word to the @words array, and returns the @words array.
# If it is invalid (either rule is broken), it returns "game over" and sets the @game_over boolean to true.
# restart: a method that sets the @words array to an empty one [] and sets the @game_over boolean to false. It  should return "game restarted".
# Examples
# my_shiritori = Shiritori.new()
# my_shiritori.play("apple") ➞ ["apple"]
# my_shiritori.play("ear") ➞ ["apple", "ear"]
# my_shiritori.play("rhino") ➞ ["apple", "ear", "rhino"]
# my_shiritori.play("corn") ➞ "game over"
# # Corn does not start with an "o".
# my_shiritori.words ➞ ["apple", "ear", "rhino"]
# # Words should be accessible.
# my_shiritori.restart() ➞ "game restarted"
# my_shiritori.words ➞ []
# # Words array should be set back to empty.
# my_shiritori.play("hostess") ➞ ["hostess"]
# my_shiritori.play("stash") ➞ ["hostess", "stash"]
# my_shiritori.play("hostess") ➞ "game over"
# # Words cannot have already been said.

class Shiritori
  def initialize()
    @words = Array.new
    @game_over = false
  end

  def play(str)
    if @words.empty?
      p @words << str
    elsif @words.include?(str)
      @game_over = true
      p "GAME OVER...!!!!"
    elsif str.split("").first == (@words.last.split("")).last
      p @words << str
    else
      @game_over = true
      p "GAME OVER...!!!!"
    end
  end

  def words()
    p "The listed words are :", @words
  end

  def restart()
    @words = Array.new
    @game_over = false
    p "Game Restarted..!!"
  end
end

my_shiritori = Shiritori.new()
my_shiritori.play("apple")
my_shiritori.play("ear")
my_shiritori.play("aunt")
my_shiritori.words()
my_shiritori.restart()
my_shiritori.play("match")
my_shiritori.play("horse")
my_shiritori.words()
my_shiritori.play("foul")
my_shiritori.restart()
my_shiritori.words()
