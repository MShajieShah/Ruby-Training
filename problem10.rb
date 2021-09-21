# -----------------------------------------------------------------------------------------------------------------------------
# Problem 10:
# Suppose a hash # represents the BACKSPACE key being pressed. Write a function that transforms a string containing # into a 
# string without any #.
# Examples
# erase("he##l#hel#llo") ➞ "hello"
# erase("major# spar##ks") ➞ "majo spks"
# erase("si###t boy") ➞ "t boy"
# erase("####") ➞ ""
# ------------------------------------------------------------------------------------------------------------------------------
def erase(str)
  new_str = ""
  n=0
  while n < str.length
    item = str[n]
    if (item == "#")
        new_str = new_str.chop
        n+=1
    else
        new_str = new_str + item
        n+=1
    end
  end
  return new_str
end
  p erase("######he##l#hel#llo#########")
  p erase("major# spar##ks")
