# 1 REPEAT AFTER ME
puts "Type anything you want:"
input = gets.chomp
puts input

# 2 YOUR AGE IN MONTHS
puts ">> What is your age in years?"
age_year = gets.chomp.to_i # futher exploration, if you don't convert to integer here or below, it will repeat the string 12 times.
age_month = age_year * 12
puts "You are #{age_month} months old."

# 3 PRINT SOMETHING (PART 1)
puts ">> Do you want me to print something? (Y/N)"
answer = gets.chomp.downcase # further exploration, downcase added to accept Y or y.
if answer == "y"
  puts "something" # could also make this one line, puts 'something' if answer == "Y"
end

# 4 PRINT SOMETHING (PART 2)
# my solution, which works just fine:
loop do
puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp.downcase
  if answer == 'y'
    puts "something"
    break
  elsif answer == 'n'
    break
  else
    puts "Invalid input! Please enter y or n."
  end
end

# book solution, which is a good exercise to re-work from memory. Never would have used the array as a field to check if user input matches, which is handy when more cases are used.
choice = nil # initialized in outer scope so it can be reassigned in the inner scope and then called again in the outer.
loop do
  puts ">> Do you want me to print something? (y/n)"
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice) # shorthand syntax for ["y", "n"]. Checking to see if the user input, choice, matches either choice in the array.
  puts ">> Invalid input! Please enter y or n."
end
puts "something" if choice == 'y'
#choice was assigned to nil on line 1, simply to initialize the variable and allow it to be accessed/re-assigned within the loop. 
# Remember, variables initialized in outer scope are available within inner scope, but not vice versa.
# Also, Ruby doesn't seem to care what you initialize choice to on line 1 - you could replace line 1 with choice = <leave blank - assign it to nothing> and it will still work.

# 5 LAUNCH SCHOOL PRINTER (PART 1)
output = nil
loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  output = gets.chomp.to_i
  break if output >= 3
  puts "That's not enough lines." # I did it like the book solution without looking.
end
output.times { puts "Launch School is the best!" } # book solution uses a while loop with a counter down here, but I like my way better.


# 6 PASSWORDS
# my solution is the same as the book except they provide a constant (all caps) at the beginning to define the password and set that as what it should be equal to later.
PASSWORD = 'SecreT'
loop do
  puts ">> Please enter your password:"
  password = gets.chomp
  break if password == PASSWORD # I originally just typed the password 'SecreT' here.
  puts ">> Invalid password!"
end
puts "Welcome!"


# 7 USER NAME AND PASSWORD
USERNAME = "admin"
PASSWORD = "SecreT"

loop do
  puts ">> Please enter user name:"
  username_try = gets.chomp
  puts ">> Please enter your password:"
  password_try = gets.chomp
  break if username_try == USERNAME && password_try == PASSWORD
  puts "Authorization failed!"
end
puts "Welcome" # my solution matched the book exactly

# 8 DIVIDING NUMBERS
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end

loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp                                        # could simplify the if statement below to check for denominator of '0' first.
  if valid_number?(denominator) && denominator != '0'             # if denominator == '0'
    break                                                         #   puts ">> Invalid input. A denominator of 0 is not allowed."
  elsif denominator == '0'                                        # else
    puts ">> Invalid input. A denominator of 0 is not allowed."   #   break if valid_number?(denominator)
  else                                                            #   puts ">> Invalid input. Only integers are allowed."
    puts ">> Invalid input. Only integers are allowed."           # end
  end
end

answer = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{answer}"
# my solution was almost exactly like the book's. Main difference is notated above.

# 9 LAUNCH SCHOOL PRINTER (PART 2)
loop do
  puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
  output = gets.chomp
  if output.to_i >= 3
    output.to_i.times { puts "Launch School is the best!" }
    next
  elsif output.downcase == 'q'
    break
  else
    puts "That's not enough lines."
  end
end # book solution uses two loops, inner and outer, which I understand, but to me is a lot messier than my solution.

# 10 OPPOSITES ATTRACT
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer_1 = nil
integer_2 = nil

loop do
  
  loop do
    puts ">> Please enter a positive or negative integer:"
    integer_1 = gets.chomp
    break if valid_number?(integer_1)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
  
  loop do
    puts ">> Please enter a positive or negative integer:"
    integer_2 = gets.chomp
    break if valid_number?(integer_2)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end

  break if integer_1.to_i * integer_2.to_i < 0 # my original, long solution: (integer_1.to_i > 0 && integer_2.to_i < 0) || (integer_1.to_i < 0 && integer_2.to_i > 0)
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
end

answer = integer_1.to_i + integer_2.to_i
puts "#{integer_1} + #{integer_2} = #{answer}"

# The book solution is way different. It acknowledges that a loop within a loop works, but it may be easier to use a method to obtain both input integers.
# I attempt the book solution below from memory:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    integer = gets.chomp
    return integer.to_i if valid_number?(integer)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
end

number_1 = nil
number_2 = nil

loop do
  number_1 = get_number
  number_2 = get_number
  break if number_1 * number_2 < 0
  puts "Sorry. One integer must be positive, one must be negative."
  puts "Please start over."
end

result = number_1 + number_2
puts "#{number_1} + #{number_2} = #{result}"
# The benefit of the book solution is that you don't have to repeat yourself with getting the input. You just call the method twice.