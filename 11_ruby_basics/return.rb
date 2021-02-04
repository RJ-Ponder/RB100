# 1 BREAKFAST, LUNCH, OR DINNER? (PART 1)
def meal
  return 'Breakfast'
end

puts meal # this prints 'Breakfast' which was returned explicitly by the method. In the method, return is unnecessary because the last executed line for every method is returned implicitly.

# 2 BREAKFAST, LUNCH, OR DINNER? (PART 2)
def meal
  'Evening'
end

puts meal # prints 'Evening' because it is returned by the method implicitly as the last (and only) line executed.

# 3 BREAKFAST, LUNCH, OR DINNER? (PART 3)
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal # this will print 'Breakfast' because return is explicitly called and it exits the method.

# 4 BREAKFAST, LUNCH, OR DINNER? (PART 4)
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal # this is tricky, but I think puts merely prints the return value of the method, which would be the last line, 'Breakfast'. 
# I was wrong. I had originally typed out the correct answer, but then second guessed myself and changed it.
# the answer is 'Dinner' n\ 'Breakfast'. On line 2, Dinner is outputted, but execution continues and 'Breakfast is returned'
# the return value of 'Breakfast' is output by the call to puts the method on line 29. There is more than one output because there is more than one puts.
# line 25 outputs dinner and line 29 outputs breakfast. Two puts, two outputs. One return from the method. The execution of the method contains a puts which prints dinner.
# puts is not executing the method, only printing the return value as an output. Therefore, executing the method without puts would still yield 'Dinner', but the return value will not be output.

# 5 BREAKFAST, LUNCH, OR DINNER? (PART 5)
def meal
  'Dinner'
  puts 'Dinner' # this outputs 'Dinner' and returns nil.
end

p meal # when the method is executed by being called here, 'Dinner' is output and nil, the return of the method, is printed.

# 6 BREAKFAST, LUNCH, OR DINNER? (PART 6)
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal # this time, puts prints the return value of the method 'Breakfast'. Nothing else is printed because the explicit return exits the method before execution of anything below.

# 7 COUNTING SHEEP (PART 1)
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep # I think sheep is printed five times on five lines and then nil.
# I was confused by the sheep as a variable and didn't know the times method iterates from zero to the number given - 1.
# executing only count_sheep will be 0 1 2 3 4 from the five puts. The return value of the times method is actually 5, the integer upon which the method was called.
# therefore, the puts before the method call prints the return value of the method as well.

# 8 COUNTING SHEEP (PART 2)
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep # will print 0 1 2 3 4 10. Same as above explanation except this time the method returns 10, not 5, because 10 is the last line.

# 9 COUNTING SHEEP (PART 3)
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep # will print 0 1 2 nil because the method exits when 2 is arrived at, after it is printed alread.
# I debated between 0 1 2 2 and 0 1 2 5 as well. But I think p shows that it is nil. The last line is a return with nothing given, so default would be nil.
# book solution: return didn't provide a value, so nil.

# 10 TRICKY NUMBER
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number # First answer I give is nil, because I don't know if assigning a variable returns the value. But having puts makes me think actually 1. I go with 1.
# I was right! Book solution: The number as a variable assignment is actually useless, but variable assignment still returns the value that was assigned to the variable.
# Note, since true was provided, the if part of the clause is evaluated every time and the else part is ignored.
# If false was provided, the else part would be evaluated and the invoked method returns 2. 