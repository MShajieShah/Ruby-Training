# Create a function that takes a string and returns dashes on the left and right side of every vowel (a e i o u).

# Examples
# dashed("Edabit") ➞ "-E-d-a-b-i-t"
# dashed("Carpe Diem") ➞ "C-a-rp-e- D-i--e-m"
# dashed("Fight for your right to party!") ➞ "F-i-ght f-o-r y-o--u-r r-i-ght t-o- p-a-rty!"
# Notes
# A string can contain uppercase and lowercase vowels.
# Y is not considered a vowel.



  
def dashed(str)
  vowels=['a','e','i','o','u','A','E','I','O','U']
  str.chars.map{|x| (vowels.include? x)? "-"+x+"-" : x}.join
end
p dashed("Edabit") 
p dashed("Carpe Diem")