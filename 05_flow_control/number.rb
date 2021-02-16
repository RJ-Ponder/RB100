# Exercise 3

puts "Type a number between 0 and 100."
number = gets.chomp.to_i

if number >= 0 && number <= 50
  puts "This number is between 0 and 50. (Or is 0 or 50)."
elsif number >= 51 && number <= 100
  puts "This number is between 51 and 100. (Or is 51 or 100)."
else number > 100
  puts "This number is greater than 100 or is an invalid entry."
end

# evaluate_num.rb (from Launch School Solution)
=begin
puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end
=end