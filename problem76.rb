# Abigail and Benson are playing Rock, Paper, Scissors.
# Each game is represented by an array of length 2, where the first element represents what Abigail played and  the second element represents what Benson played.
# Given a sequence of games, determine who wins the most number of matches. If they tie, output "Tie".
# • R stands for Rock
# • P stands for Paper
# • S stands for Scissors
# calculate_score([["R", "P"], ["R", "S"], ["S", "P"]]) ➞ "Abigail"
# # Benson wins the first game (Paper beats Rock).
# # Abigail wins the second game (Rock beats Scissors).
# # Abigail wins the third game (Scissors beats Paper).
# # Abigail wins 2/3.
# calculate_score([["R", "R"], ["S", "S"]]) ➞ "Tie"
# calculate_score([["S", "R"], ["R", "S"], ["R", "R"]]) ➞ "Tie"

def find_champ(x)
  abigile = x[0]
  benson = x[1]
  if (abigile == "R" && benson == "S") || (abigile == "S" && benson == "P") || (abigile == "P" && bneson == "R")
    return -1
  elsif abigile == benson
    return 0
  else
    return 1
  end
end

def calculate_score(arr)
  a = 0
  arr.each do |x|
    a += find_champ(x)
  end
  if a < 0
    "Abigile"
  elsif a > 0
    "Benson"
  else
    "Tie"
  end
end

p calculate_score([["R", "P"], ["R", "S"], ["S", "P"]])
p calculate_score([["R", "R"], ["S", "S"]])
p calculate_score([["S", "R"], ["R", "S"], ["R", "R"]])
