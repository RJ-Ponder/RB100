# Exercise 5
# "What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use."
# I could use the has_value? method. Similar to the has_key? method. Takes an argument.

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts "Enter the value you would like to search for in the hash."
value = gets.chomp
if person.has_value?(value)
  puts "This value is indeed contained in the hash!"
else
  puts "This value is not contained in the hash."
end
# note: my solution was great; matched the thought and flow of the book solution without looking.