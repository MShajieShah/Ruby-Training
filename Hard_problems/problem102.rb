def increment(str)
  if str.match(/\d./)
    str.succ
  else
    str << "1"
  end
end

p increment("foo009")
