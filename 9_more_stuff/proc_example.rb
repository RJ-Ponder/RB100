# Procs are blocks that are wrapped in a proc object and stored in a variable to be passed around.
talk = Proc.new { puts "I am talking." }

talk.call

# Procs can also take arguments.

talk = Proc.new do |name|
  puts "I am talking to #{name}."
end

talk.call "Bob" # This could have been anything. Doesn't have to be a name.

