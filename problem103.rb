# Problem 2:
# Write a function that returns true if you can use the letters of the first string to create the second string.
# Letters are case sensitive.
#   Examples
#   can_build("aPPleAL", "PAL") ➞ true

#   can_build("aPPleAL", "apple") ➞ false

#   can_build("a", "") ➞ true

#   can_build("aa", "aaa") ➞ false
def can_build(s1, s2)
  s2.chars.uniq.all? { |x| s2.count(x) <= s1.count(x) }
end

p can_build("aPPleAL", "PAL")
p can_build("aPPleAL", "apple")
p can_build("a", "")
p can_build("aa", "aaa")
