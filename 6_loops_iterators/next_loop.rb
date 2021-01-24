i = 0
loop do
  i += 2
  
  #puts i  => testing to see. Next skips the rest of the current iteration within the loop and starts executing the next iteration.
  # you can use this to not finish parts of iterations based on conditions.
  
  if i == 4
    next
  end 
  
  puts i
  
  if i == 10
    break
  end 
end