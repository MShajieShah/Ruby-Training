#lambda
#lambda check the number of parameters passed when they are called.
# If you create a lambda function that accepts one parameter, and you call the lambda with zero parameters,
# it will fail. If you call it with two or more parameters, it will also fail. The lambda must be called with exactly one parameter.
#-------------------------------------------------------------------------------------------------------------
my_lambda = lambda { |name = "jerry"| puts "hello " + name }
my_lambda.call
my_lambda.call("newman")
#-------------------------------------------------------------------------------------------------------------
double_it = lambda { |num| num * 2 }
triple_it = lambda { |num| num * 3 }

def apply_lambda(lmbda, number)
  puts lmbda.call(number)
end

apply_lambda(double_it, 10)
apply_lambda(triple_it, 20)
#-------------------------------------------------------------------------------------------------------------
my_one_line_lambda = lambda { puts "hello" }
my_multi_line_lambda = lambda do
  puts "hello"
end
#-------------------------------------------------------------------------------------------------------------

def build_lambda
  output = "output from function"
  return lambda { puts output }
end

output = "output from top level"
my_lambda = build_lambda
my_lambda.call

#----------------------------------------------------------------------------------------------------------------
def build_lambda(text)
  my_text = text
  return lambda { puts my_text }
end

my_lambda = build_lambda("first function")
another_lambda = build_lambda("second function")

my_lambda.call
another_lambda.call
# -------------------------------------------------------------------------------------------------------------

def best_movie_lambda
  movie = lambda { return "Harry Potter!" }
  movie.call
  "Lord of the rings!"
end

puts best_movie_lambda
#--------------------------------------------------------------------------------------------------------------
#procs
#procs accept any number of arguments. If they are passed too few arguments, the unpassed arguments are set to
#a value of nil. If they are passed too many arguments, the extraneous arguments are dropped silently.
#----------------------------------------------------------------------------------------------------------------
my_proc = Proc.new { |name| puts "proc says hello " + name.to_s }
my_proc.call("jerry")
my_proc.call
#----------------------------------------------------------------------------------------------------------------
my_proc = Proc.new do |name|
  puts "proc says hello " + name
  return "proc done"
end

def call_proc(prc)
  value = prc.call("jerry")
  puts value
end

call_proc(my_proc)
# ----------------------------------------------------------------------------------------------------------------
def compose(proc1, proc2)
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x
end
doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt
puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)
# ------------------------------------------------------------------------------------------------------------------
class Array
  def eachEven(&wasABlock_nowAProc)
    # We start with "true" because arrays start with 0, which is even.
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)  # Toggle from even to odd, or odd to even.
    end
  end
end

["apple", "bad apple", "cherry", "durian"].eachEven do |fruit|
  puts "Yum!  I just love " + fruit + ' pies, don\'t you?'
end
# ----------------------------------------------------------------------------------------------------------------------
def best_movie_proc
  movie = Proc.new { return "Harry Potter!" }
  movie.call
  "Lord of the rings!"
end

puts best_movie_proc
