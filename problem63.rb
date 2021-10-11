# Suppose you are directionally challenged, and get lost easily. As a result, sometimes you walk in circles or  make U-turns. You might take a sub-optimal route. Create a function that returns the difference in length  between your path and the optimal path. Both paths reach the same destination.
# You start at (0,0) and reach your destination by the end of the input array.
# A demonstration:
# Your route: ["N", "S", "E", "W", "E", "E", "E", "N"] // 8
# Optimal route: ["E", "E", "E", "N"] (or ["N", "E", "E", "E"], etc.) // 4
# # Difference in length: 8 - 4 = 4
# # Explanation: Your "S" cancels out your "N" and your "W" cancels out your "E" leaving you back at (0,0) Examples
# route_diff(["N", "E", "S", "W"]) ➞ 4
# # You"ve just walked in a circle! You are back at the origin. Your optimal path was `[]`.
# route_diff(["N", "N", "N", "E", "N", "E"]) ➞ 0 # No improvements here!
# route_diff(["N", "S", "N", "S", "E", "W", "E", "E"]) ➞ 6

def route_diff(arr)
  if arr.include?("W") && arr.include?("S")
    arr.each do |x|
      if x == "S"
        c = arr.find_index("S")
        if arr[c + 1] == "N"
          arr.delete_at(c + 1)
        end
      elsif x == "W"
        d = arr.find_index("W")
        if arr[d + 1] == "E"
          arr.delete_at(d + 1)
        end
      else x != "S" && x != "W"
        arr
      end
    end
    return arr.count
  else
    return 0
  end
end
p route_diff(["N", "S", "E", "W", "E", "E", "E", "N"])
p route_diff(["N", "S", "N", "S", "E", "W", "E", "E"])
p route_diff(["N", "E", "S", "W"])
p route_diff(["N", "N", "N", "E", "N", "E"])