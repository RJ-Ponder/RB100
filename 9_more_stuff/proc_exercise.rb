# Exercise 2
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" } # without .call on the end of block, nothing is printed. The method returns a proc object. I noticed call wasn't there.

# Exercise 4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" } # when .call is present, the string "Hello..." is printed and nil is returned.