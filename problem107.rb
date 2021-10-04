# Write a function that groups words by the number of capital letters and returns a dictionary of object entries whose keys are the number of capital letters and the values are the groups.

# Examples
# grouping(["HaPPy", "mOOdy", "yummy", "mayBE"]) ➞ {
#   0: ["yummy"],
#   2: ["mayBE", "mOOdy"],
#   3: ["HaPPy"]
# }

# grouping(["eeny", "meeny", "miny", "moe"]) ➞ {
#   0: ["eeny", "meeny", "miny", "moe"]
# }



def grouping(w)
  d = Hash.new
  w.each { |word|
    cnt = 0
    chars = word.split("")
    chars.each { |c|
      if c >= "A" && c <= "Z"
        cnt += 1
      end
    }
    if d.include? cnt
      d[cnt] << word
    else
      d[cnt] = [word]
    end
  }
  d.each { |l, words|
    d[l] = words.sort { |a, b| a.downcase <=> b.downcase }
  }
  return d
end
p grouping(["FORe", "MoR", "bOR", "tOR", "sOr", "lor"])