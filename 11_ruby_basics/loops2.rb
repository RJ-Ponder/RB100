# 1 EVEN OR ODD?

count = 1

loop do
  if count > 5
    break
  elsif count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  count += 1
end # book solution is slight variation. Putting break if count == 5 near the end instead.

# 2 CATCH THE NUMBER
loop do
  number = rand(100)
  puts number
  break if number >= 0 && number <= 10 # book solution uses number.between?(0,10)
end

# 3 CONDITIONAL LOOP
process_the_loop = [true, false].sample

loop do # the order of my solution was a little off, though it performs the same function.
  if process_the_loop
    puts "The loop was processed!"
  else
    puts "The loop wasn't processed!"
  end
  break
end
# I think they actually want the loop to run only if "The loop was processed" and no loop at all otherwise. See below.
if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end

#  4 GET THE SUM
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
  puts "Wrong answer. Try again!" # book solution: gets rid of else and moves this outside the if block, which implicitly makes it an else statement anyway.
  end
end

# 5 INSERT NUMBERS
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input # could also use numbers.push(input)
  break if numbers.size == 5
end
puts numbers

# 6 EMPTY THE ARRAY
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.size == 0 # book solution: uses break if names.empty?
end # Further exploration: to print names from last to first, use the pop method in place of shift.

# 7 STOP COUNTING
5.times do |index|
  puts index
  break if index == 2
end
# Further exploration: first will print 5 values. Second will print one and then break b/c it's less than seven.
# in my head it was >7 so I thought it would print all 5, which is true if that was the case.

# 8 ONLY EVEN
number = 0
until number == 10
  number += 1
  next if number.odd? # next needed to be put here so that it goes to the next iteration before putting the odd number.
  puts number
end

# 9 FIRST TO FIVE
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
    puts "A: #{number_a}" # added for fun to track the iterations and see who was winning
  number_b +=rand(2)
    puts "B: #{number_b}" # same as above
  next if number_a < 5 && number_b < 5 # book solution uses next unless number_a ==5 || number_b == 5
  if number_a == 5 # added if statement for fun to see which number won, rather than just puts "5 was reached!"
    puts "A wins!" 
  else
    puts "B wins!"
  end
  break
end

# 10 GREETING
def greeting
  puts 'Hello!'
end

number_of_greetings = 2
while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end