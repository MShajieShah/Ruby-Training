# Create a function that takes an encryption key (a string with an even number of characters) and a message to encrypt. Group the letters of the key by two:

# "gaderypoluki" -> "ga de ry po lu ki"
# Now take the message for encryption. If the message character appears in the key, replace it with an adjacent character in the grouped version of the key. If the message character does not appear in the key, leave it as is. If the letter in the key occurs more than once, the first result is used.

# Return the encrypted message.

# Examples
# encrypt("ab c", "abc ab") ➞ "ba cba"

# encrypt("otorhinolaryngological", "My name is Paul") ➞ "Mr olme hs Plua"

# encrypt("gaderypoluki", "This is an encrypted message") ➞ "Thks ks gn dncyrotde mdssgad"               

def encrypt(key, message)
  str = ""
  a = key.unpack("a2a*")
  message.chars.each do |x|
    b = a.index { |b| b.include?(x) }
    b == nil ? (str << x) : a[b][0] == x ? (str << a[b][1]) : (str << a[b][0])
  end
  str
end

p encrypt("ab c", "abc ab")
p encrypt("gaderypoluki", "This is an encrypted message")
