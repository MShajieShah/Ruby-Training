# Create a function that takes a mathematical expression in prefix notation as a string and evaluates the expression.

# Examples
# prefix("+ 5 4") ➞  9

# prefix("* 12 2") ➞  24

# prefix("+ -10 10") ➞  0
# Notes
# The mathematical expression is valid.
# Check the Resources.
# Use // for division.
def parse(tokens)
  token = tokens[0]
  tokens.delete_at(0)
  if token == "+"
    return parse(tokens) + parse(tokens)
  elsif token == "-"
    return parse(tokens) - parse(tokens)
  elsif token == "*"
    return parse(tokens) * parse(tokens)
  elsif token == "/"
    return parse(tokens) / parse(tokens)
  else
    return token.to_i
  end
end

def prefix(exp)
  return parse(exp.split(" "))
end

p prefix("+ 5 4")
p prefix("* 12 2")
p prefix("+ -10 10")
