# Exercise 5
# The program:
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
# will raise an exception because as written, the block is a parameter. When execute is called, it is expecting an argument, hence, wrong number of arguments: ArgumentError.
# it looks like this was meaning to be a proc as a parameters, where the ampersand should be appended to the beginning - &block.