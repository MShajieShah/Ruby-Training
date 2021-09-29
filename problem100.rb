# A long stretch of beach is represented by a string of two characters 0 - free, 1 - occupied. Due to recent
# restrictions, a new person cannot take place next to another. There has to be one free place between two
# people lounging on the beach. Create a function to compute how many new people at most can settle in on  the given beach.
# Examples
# sun_loungers("10001") ➞ 1
# # Can take place in the middle.
# sun_loungers("00101") ➞ 1
# # Can take place on the left.
# sun_loungers("0") ➞ 1
# # Can take one place.
# sun_loungers("000") ➞ 2
# # Can take places on the left and on the right.

def sun_loungers(str)
  n = str.length
  if !str.include? "1"
    return (n + 1) / 2
  end
  ans = 0
  if str[0] == "0"
    a = str.index("1")
    ans += a / 2
    str = str[a..n - 1]
  end
  str = str.gsub "1", " "
  str.split(" ").each do |x|
    if x.length >= 3
      ans += (x.length - 1) / 2
    end
  end
  return ans
end

p sun_loungers("10001")
p sun_loungers("000")
p sun_loungers("00101")
p sun_loungers("0")
