# Create a function that takes a binary string and returns the text. The eight bits on the binary string represent 1
# character on the ASCII table. For further info, check out the resource tab.
# Examples
# binary_text("01101110011011110110010001100101") ➞ "node"
# binary_text('0111001001100101011000010110001101110100') ➞ "react"
# binary_text("011100000111100101110100011010000110111101101110") ➞ "python"
def binary_text(str)
  a = []
  a << str
  a.pack("B*")
  # b = str.to_i(2).to_s(base=16)
  # b.gsub(/../) { |pair| pair.hex.chr } 
  # str.chars.each_slice(8).map{|a| a.join.to_i(2).chr}.join
        
end

p binary_text("01101110011011110110010001100101")
p binary_text("0111001001100101011000010110001101110100")
p binary_text("011100000111100101110100011010000110111101101110")
