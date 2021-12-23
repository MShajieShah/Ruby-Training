# All values in Ruby are truthy except for nil and false.
# ---------------------------------------------------------------------------------------------------------
if true
  puts "true is truthy, duh!"
else
  puts "true is falsey, wtf!"
end

if nil
  puts "nil is truthy"
else
  puts "nil is falsey"
end

if 0
  puts "0 is truthy"
else
  puts "0 is falsey"
end
#------------------------------------------------------------------------------------------------------------
some_value = 42
some_other_value = 0
yet_another_value = nil

puts !!some_value
puts !!some_other_value
puts !!yet_another_value
# ------------------------------------------------------------------------------------------------------------
def my_method(my_argument)
  if my_argument
    "Received a truthy argument"
  else
    "Received a falsy argument"
  end
end

puts my_method(0)
puts my_method(nil)
puts my_method(false)
# ------------------------------------------------------------------------------------------------------------
def check_truthy(var_name, var)
  is_truthy = var ? "truthy" : "falsy"
  puts "#{var_name} is #{is_truthy}"
end

check_truthy("false", false)
check_truthy("nil", nil)
check_truthy("0", 0)
check_truthy("empty string", "")
check_truthy("\\n", "\n")
check_truthy("empty array", [])
check_truthy("empty hash", {})
# --------------------------------------------------------------------------------------------------------------
def truthy_or_falsey(value)
  if value
    puts "#{value.inspect} is truthy"
  else
    puts "#{value.inspect} is falsey"
  end
end

[true, false, Object, 0, 1, nil, true, false, "", [1, 2, 3], {}].each do |value|
  truthy_or_falsey(value)
end
# -----------------------------------------------------------------------------------------------------------------
