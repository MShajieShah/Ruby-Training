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
# --------------------------------------------------------------------------------------------------------------
def truthy_or_falsey value
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
 

