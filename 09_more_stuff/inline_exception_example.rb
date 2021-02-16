zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!" # not possible to call the each method on an integer.
puts "After each call"