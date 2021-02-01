#Variable Scope "What's My Value?"

# Part 1
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
# the variable is scoped in the method, but nothing in the method reassigns the variable a to anything outside the method.
# the print would be 7. (This is more of the explanation to exercise 2).
# Looking at the solution, the above mental model isn't exactly correct, but I hope to refine it.
# assignment operators like += does not mutate a variable. Also numbers in Ruby are immutable.

# Part 2
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# This time, it is still 7, because method definitions are self-contained with respect to local variables. The method doesn't mutate the caller.

# Part 3
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
# It still puts 7, again because the local variable was unchanged by the method.
# Note that my_value(a+5) returns 12, but that isn't printed.

# Part 4
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
# prints Xyzzy, but my_value(a) returns "Xy-zy"
# I was wrong. Numbers are immutable and assignment only changes the object that a variable references.
# But strings are mutable. the [] method is a mutating method and modifies the string.

# Part 5
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
# This puts Xyzzy because assignment doesn't change the value of an object. It creates a new object then stores a reference to that obejjct in the variable on the left.

# Part 6
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
# Got this wrong; this actually results in an error, because while a is defined outside the method, it cannot be brought inside the method.

# Part 7
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# 3, because a is reassigned multiple times, 3 being the last. Variable scoping in method invocation differs from method definition.

# Part 8
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# Got this wrong; this results in an exception because the variable a is initialized in the block, it is not visible outside the block.
# The variable a is not defined outside the scope of the block. The main scope can't access the scope of the method each.
# Variables defined within a block are generally not available outside of the block.
# The main scope can't access the method scope, but the method scope can access the main scope.

# Part 9
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
# I got this right = 7, because the a inside the each method is performing a different function.

# Part 10
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
# I think what happens is that my_value(array) results in [8,9,10] and a will be 10.
# I was wrong. I did think that an error might be a possiblity but I struggle with variable scoping and defined methods.
# I guess you can't bring in variables defined outside the def method scope. I thought that's what was happening in previous problems, but after reviewing, that's not the case.
# In other examples you passed in the variable in the main scope using the parameter. But here the parameter is ary and you use that to pass in array. a is never passed in.