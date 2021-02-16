# Exercise 3
def countdown(x)
  if x <= 0
    x
  else
    puts x
    countdown(x - 1)
  end
end

puts countdown(12)