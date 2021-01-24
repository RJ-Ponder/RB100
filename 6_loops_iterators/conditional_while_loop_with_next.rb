x = 0

while x <= 30
  if x == 3 || x == 17 || x == 23
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end
