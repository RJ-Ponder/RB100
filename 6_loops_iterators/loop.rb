# note for exercise 1, the each method will always return the original array, or the array it was called on

# exercise 2
loop do
  input = gets.chomp
  if input != "STOP"
    puts "Until you type STOP, I will turn your input into a silly sentence."
    puts "#{input} is stupid."
  else
    break
  end
end
