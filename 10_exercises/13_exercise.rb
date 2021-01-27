# Exercise 13. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |element| element.start_with?("s") }
p arr 

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |element| element.start_with?("s") || element.start_with?("w") }
p arr

# I didn't realize that .start_with? method can take multiple arguments (and even regexp arguments, but I won't dive into that)
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |element| element.start_with?("s", "w") }
p arr