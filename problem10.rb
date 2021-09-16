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
    n=0
    str.each_char.with_object('')do |c,s|
    if c == '#'
        n+=1
    else
        n.zero? ? (s<<c): n-=1
    end
end
end
p erase("he##l#hel#llo")