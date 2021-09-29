# Due to a huge scandal about the Ladder sons Ladder Factory creating faulty ladders, the
# Occupational Safety and Health Administration require your help in determining whether a ladder
# is safe enough for use in the work place! It is vital that a ladder passes all criteria:

# The ladder must be at least 5 characters wide.
# The ladder mustn't have more than a 2 character gap between rungs.
# Rungs must be evenly spaced apart.
# Rungs should not be broken (i.e. no gaps).
# Given a ladder (drawn as an array of strings) return true if it passes all of OSHA's criteria.

def is_ladder_safe(arr)
  a = []
  arr.each do |x|
    if x == "#  #" || x == "#####"
      a << 1
    else
      a << 0
    end
  end
  if a.include?(0)
    return false
  else
    return true
  end
end

p is_ladder_safe(["#  #", "#####", "#  #", "#  #", "#####", "#  #"])
p is_ladder_safe(["#   #","#####","#   #","#####","#   #","#   #","#####","#   #"])
p is_ladder_safe(["#   #","#  ##","#   #","#   #","#####","#   #","#   #","#####","#   #"]) 
p is_ladder_safe(["#   #","#####","#   #","#   #","#   #","#   #","#####","#   #","#   #","#   #","#   #","#####","#   #"])