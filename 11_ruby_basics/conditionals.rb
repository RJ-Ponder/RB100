# 1 UNPREDICTABLE WEATHER (PART 1)
sun = ['visible', 'hidden'].sample
if sun == 'visible'
  puts "The sun is so bright!"
end

# 2 UNPREDICTABLE WEATHER (PART 2)
sun = ['visible', 'hidden'].sample
unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end

# 3 UNPREDICTABLE WEATHER (PART 3)
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun == 'visible' #conditions added to the end of a statement like this are called modifiers.
puts "The clouds are blocking the sun!" unless sun == 'visible'

# 4 TRUE OR FALSE
# Refresher on ternary operators. Consists of three parts: conditional statement and two possible outcomes.
# syntax: condition ? true : false
# example: "text".size > 4 ? "More than four characters" : "Not more than four characters"
# example: sun == 'visible' ? "sunny" : "cloudy"
boolean = [true, false].sample
boolean ? puts("I'm true!") : puts("I'm false!") # I didn't use puts in my solution. Note that parenthesis are required here.

# 5 TRUTHY NUMBER
number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end # This puts "My favorite number is 7." because every expression in ruby evaluates to true except false or nil.

# 6 STOPLIGHT (PART 1)
stoplight = ['green', 'yellow', 'red'].sample # written way 1: long way, essentially as an if/else statement. (See next exercise.)
case
  when stoplight == 'green'
    puts "Go!"
  when stoplight == 'yellow'
    puts "Slow down!"
  when stoplight == 'red' # book solution: else
    puts "Stop!"
  else
    puts "Stoplight is broken."  # I knew I didn't need this, just added for fun.
end
  
stoplight = ['green', 'yellow', 'red'].sample # written way 2: short way.
case stoplight
  when 'green'
    puts "Go!"
  when 'yellow'
    puts "Slow down!"
  when 'red' # book solution: else
    puts "Stop!"
  else
    puts "Stoplight is broken." # I knew I didn't need this, just added for fun.
end

# 7 STOPLIGHT (PART 2)
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts "Go!"
elsif stoplight == 'yellow'
  puts "Slow down!"
else # stoplight == 'red' # originally had that, but it's unnecessary.
  puts "Stop!"
end

# 8 SLEEP ALERT
status = ['awake', 'tired'].sample
action = status == 'awake' ? "Be productive!" : "Go to sleep!" # my solution: ternary operator
puts action
# book solution below. I didn't know you could do this, but good to know.
alert = if status == 'awake'
          "Be productive!"
        else
          "Go to sleep!"
        end
puts alert # puts is only invoked once to print the return value of the if statement, rather than in each clause.

# 9 COOL NUMBERS
number = rand(10)

if number == 5 # made it a comparator operator rather than assigment operator (which is always true).
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

# 10 STOPLIGHT (PART 3)
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts "Go!" # the when and then combo makes it one line
when 'yellow' then puts 'Slow down!'
else               puts "Stop!" # the alignment was the book solution, not me. The book says this helps with readability.
end