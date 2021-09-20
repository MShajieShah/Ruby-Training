# --------------------------------------------------------------------------------------------------------------------------------------------
# Problem 4:
# Brackets and parentheses in mathematical expressions have to conform to certain logical rules. Every opening bracket must have a closing mate somewhere further down the line. Although brackets can be nested, different types cannot overlap:
# ([<x+y>+3]-1) makes sense because each set of brackets contains or is contained by another set.
# ([<x+y>+3)-1] makes no sense because the parentheses and the square brackets overlap.
# Given a string expression that can contain four types of brackets: () <> [] {}, create a function that returns true if the bracket logic is valid and false if it is not.
# Examples
# bracket_logic("[<>()]") ➞ true
# bracket_logic("[<(>)]") ➞ false
# bracket_logic("[(a*b+<7-c>+9]") ➞ false
# # Opening parenthesis has no mate.
# bracket_logic("[{(h*i+3)-12]/4*x+2}") ➞ false
# # Square and curly brackets overlap.
# bracket_logic("[ab(c/d<e-f+(7*6)>)+2]") ➞ true
# ----------------------------------------------------------------------------------------------------------------------------------------------
 def bracket_logic(s)
   a = []
   brackets = { '{' => '}', '[' => ']', '(' => ')' , '<' => '>'}
   s.each_char do |char|
     if brackets.key?(char)
       a.push(char)
     elsif brackets.values.include?(char)
       return false if brackets.key(char) != a.pop
     end
   end
   a.empty?
 end
p bracket_logic("[<>()]")
p bracket_logic("[<(>)]")
p bracket_logic("[(a*b+<7-c>+9]")
p bracket_logic("[{(h*i+3)-12]/4*x+2}")
p bracket_logic("[ab(c/d<e-f+(7*6)>)+2]")