# def deepset(str)
#   a = (str.to_s).split("")
#   if a.count("[") == a.count("]")
#     return a.count("[")
#   end
# end

# p deepest([1, 4, [1, 4, [1, 4, [1, 4, [5]]]]])
# p depest([[[[[[[[[[211]]]]]]]]]])

def increment(str)
  if str.match(/\d./)
    str.succ
  else
    str << "1"
  end
end

p increment("foo009")
