# RUNAWAY LOOP
loop do
  puts 'Just keep printing...'
  break # my solution and also book solution
end

# LOOPCEPTION
loop do
  puts 'This is the outer loop.'
  
  loop do
    puts 'This is the inner loop.'
    break # without this, 'outer' prints once, then 'inner' prints indefinitely
  end
  break # without this, but with first break, 'outer' and 'inner' alternate, printing indefinitely.
end

puts 'This is outside all loops.'
# Note, I first tried solving this with Next.
# break exits the loop entirely. Next only goes to the next iteration in the loop. Next is not applicable here.

# CONTROL THE LOOP - Modify to iterate 5 times instead of 1
iterations = 1
loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end
# I arrived at the book solution without looking. It took a bit because I messed up syntax, putting =+ instead of +=.
# further exploration, if the break line was moved up, would need >= instead.

# LOOP ON COMMAND
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts "Please enter 'yes' to stop looping."
end

# SAY HELLO - modify to print hello five times.
say_hello = true
a = 0
while say_hello
  a += 1
  puts 'Hello!'
  next if a < 5 # my solution skips setting equal to false if counter, a, is less than 5.
  say_hello = false # book solution: say_hello = false if count == 5
end
# Could also do 5.times { puts "Hello!" } but that is something completely different.

# PRINT WHILE
# Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.
numbers = []
num = Random.new
while numbers.count < 5 # book solution uses .size. size is preffered over .length, which are aliases. Count does the same thing with no argument, but you could specify to count for certain conditions.
  numbers << num.rand(99) # didn't need to use num = Random.new as rand(number) by itself works.
end

puts numbers

# COUNT UP
count = 1

while count <= 10
  puts count
  count += 1
end

# OR
count = 1

until count > 10
  puts count
  count += 1
end

# PRINT UNTIL
