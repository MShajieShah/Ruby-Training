# ---------------------------------------------------------------------------------------------------------------------------
# Problem 21:
# Given an array of  prices and a "supposed" total t, return true if there is a hidden fee added to the total (i.e. the total 
# is greater than the sum of prices), otherwise return false.

# Examples
# has_hidden_fee(["$2", "$4", "$1", "$8"], "$15") ➞ false

# has_hidden_fee(["$1", "$2", "$3"], "$6") ➞ false

# has_hidden_fee(["$1"], "$4") ➞ true
#---------------------------------------------------------------------------------------------------------------------------- 
def has_hidden_fee(arr,x)
    new_arr = []
    i = 0
    while i<=arr.length() do
        b = arr.shift()
        b.delete!("$")
        arr.push(b)
        i+=1
      end
      c = arr.inject(0) {|s,e| s.to_i + e.to_i }
    if x.delete!("$").to_i == c
      return false
    else true
    end
  end
      
p has_hidden_fee(["$1","$2"],"$3")
p has_hidden_fee(["$1","$2"],"$4")
p has_hidden_fee(["$1"],"$4")