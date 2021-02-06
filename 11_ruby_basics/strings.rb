# 1 CREATE A STRING
string = String.new # could also use a string literal: string = ''

# 2 QUOTE CONFUSION
puts 'It\'s now 12 o\'clock.' # single quotes don't allow for escape sequences, except for escaping other single quotes as you see here.
puts "It's now 12 o'clock." # %Q(example) another way of showing double quotes' %q(example) another way of showing single quotes.
# %Q() and %q() can be used to display strings containing double and single quotes. Which one you use depends on the escaping characters function.

# 3 IGNORING CASE
name = 'Roger'
puts name.casecmp?('RoGeR') # without the question mark, it returns a numerical value (-1, 0, 1), rather than boolean.
puts name.casecmp?('DAVE') # casecmp method is a case insensitive comparator. <=> is case sensitive.
# alternatively
puts name.downcase == 'RoGeR'.downcase
puts name.downcase == 'DAVE'.downcase

# 4 DYNAMIC STRING
name = 'Elizabeth'
puts "Hello, #{name}!" # string interpolation. #to_s is automatically called on it. Double quotes must be used.

# 5 COMBINING NAMES
first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}" # could have also done string concatenation with + as the book solution does.
# another way is with the #concat method. full_name = first_name.concat(' ', last_name)
puts full_name
# note that << is a string operation that mutates the caller by inserting what you want.

# 6 TRICKY FORMATTING
state = 'tExAs'
state.capitalize!
puts state

# 7 GOODBYE, NOT HELLO
greeting = 'Hello!'
greeting.replace('Goodbye!') # replace is a destructive method.
puts greeting

# book solution:
greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye!') # first argument is what you want replaced. second argument is what you want to replace it with.
puts greeting # used the destructive version of the method, so this is modified.

# 8 PRINT THE ALPHABET
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('') # passing an empty string as an argument splits by individual characters.

# 9 PLURALIZE
words = 'car human elephant airplane'
words_array = words.split(' ') # book solution didn't separate this into a different array, which is fine.
words_array.each { |word| puts word + 's'}

# 10 ARE YOU THERE?
colors = 'blue pink yellow orange'
puts colors.include? 'yellow'
puts colors.include? 'purple'
# further exploration:
colors = 'blue boredom yellow'
colors.include?('red') # => true, because the substring is included, even though it isn't its own color. Include spaces potentially to filter this.