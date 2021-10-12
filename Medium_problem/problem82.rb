# Yasir needs your help to find out next happy year.
# A Happy Year is the year with only distinct digits. Create a function that takes an integer year and returns the  next happy year.
# Examples
# happy_year(2017) ➞ 2018
# 2018 has all distinct digits
# happy_year(1990) ➞ 2013
# happy_year(2021) ➞ 2031
def happy_year(num)
  num += 1
  if num.to_s.chars.uniq.length == num.to_s.length
    return num
  end
  happy_year(num)
end

p happy_year(1990)
