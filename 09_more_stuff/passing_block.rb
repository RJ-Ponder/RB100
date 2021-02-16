# blocks, like parameters, can be passed into a method just like normal variables.

# easy example:
def take_block(&block) # the ampersand signals that the argument is a block. Can name it anything you want. The block must always be the last parameter in the method definition
  block.call 
end

take_block do
  puts "Block being called in the method!"
end
# this is no different than using built in methods that take a block, but this is the first time we've defined one ourselves.

# more complex, passing an argument to the method as well:

def take_block2(number, &whatever)
  whatever.call(number)
end

number = 42
take_block2(number) do |num|
  puts "Block being called in the method! #{num}"
end