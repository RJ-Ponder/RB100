# 1 PRINT ME (PART 1)
def print_me
  puts "I'm printing within the method!" # outputs (prints) string, but returns nil
end
print_me

# 2 PRINT ME (PART 2)
def print_me2
  "I'm printing the return value!" # returns string; nothing outputs (prints) unless you tell it to.
end
puts print_me2

# 3 GREETING THROUGH METHODS (PART 1)
def hello
  "Hello"
end

def world
  "World"
end
puts hello + " " + world # string concatenation (my solution)
puts "#{hello} #{world}" # string interpolation (book solution)

# 4 GREETING THROUGH METHODS (PART 2)
def greet
  "#{hello} #{world}"
 # hello + " " + world # either one works; note: only returns the last line in a method.
end
puts greet

# 5 MAKE AND MODEL
def car(make, model)
 puts make + " " + model
end

car("Honda", "Civic") # Further exploration: puts here and not in method. Return is the string, not nil, as is the case currently.

# 6 DAY OR NIGHT
def time_of_day(boolean) # same as book solution, except they named the parameter daylight.
  if boolean
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)

# 7 NAMING ANIMALS
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog("Spot")}."
puts "The cat's name is #{cat("Ginger")}." # the number of arguments invoked must match the number of arguments the method accepts.

# 8 NAME NOT FOUND
def assign_name(name = 'Bob') # this is the syntax to specify a default argument when none is given.
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

# 9 MULTIPLY THE SUM
def add(x, y) # book solution uses num1 and num2 as parameters.
  x + y
end

def multiply(x, y)
  x * y
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

# 10 RANDOM SENTENCE
# I orginally had it just as the book solution, but changed some things to give myself more clarity surrounding which variables were being referenced.
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def method1(x) # originally had name(names)
  x.sample # oringinally had names.sample
end
def method2(y) # originally had activity(activities)
  y.sample # originally had activities.sample
end
def method3(a, b) # originally had sentence(name, activity)
  "#{a} went #{b} today!" # originally had name and activity as the parameters
end
  
puts method3(method1(names), method2(activities)) # I changed all of the above to show that the only place where the actual variables are referenced is here, to pass them into the methods as arguments.
# the parameters for the method definitions don't have anything to do with the variables initialized in the outerscope. They are only referenced if they are passed through into the definition as an argument.