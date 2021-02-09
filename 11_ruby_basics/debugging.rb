# NOTE: BUGS ARE COMMENTED OUT; FIXES ARE NOTATED
=begin
# 1 READING ERROR MESSAGES
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples
# making the below arguments into arrays solves the bugs.
find_first_nonzero_among(0, 0, 1, 0, 2, 0) # This should raise an error because the method was not defined to take multiple arguments.
find_first_nonzero_among(1) # this raises an error, because the argument should be an array in order to use the each method. #each is not a method for the integer class.

# 2 WEATHER FORECAST
def predict_weather
  # sunshine = ['true', 'false'].sample // doesn't work because contents were strings, not booleans. In Ruby, anything other than nil or false evaluates to true.
  sunshine = [true, false].sample # changed the strings to actual booleans.
  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

# 3 MULTIPLY BY FIVE
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i # the string input needs to be converted to an integer to perform the multiplication operation as expected.

puts "The result is #{multiply_by_five(number)}!"

# 4 PETS
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

# pets[:dog] = 'bowser' // this replaces the value associated with the :dog key rather than adding it.
pets[:dog] << 'bowser' # alternatively, pets[:dog].push('bowser') // using an array method to add the name instead.

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}

# 5 EVEN NUMBERS
numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.map do |n| # map transforms every element in an array. Here we want #select to select elements that meet a truthy criteria.
# I didn't realize this, but from the book hint, the map array will return nil if the value is not even in this case: [nil, 2, nil, 6, ,nil, nil, 8]
even_numbers = numbers.select do |n|
  n if n.even? # book solution: this line can be simplified to just, n.even? // because select takes elements that cause the block to return true (no need for if statement)
end

p even_numbers # expected output: [2, 6, 8]

# 6 CONFUCIUS SAYS
def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"' # this throws an error, no implicit conversin of nil into String.
# the confusion lies in what the method is returning. It would be clearer if this was written as an if, elsif, else statement.
# In this case, with three if statements, if the first if is true, it still goes to the last to evalate if == 'Einstein'. 
# if it isn't Einstein then the return value is nil, throwing the error.
# this could be fixed either by making it an if, elsif, else statement or inserting explicit return into the Yoda and Confucius quotes.

# with explicit return:
def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# with if, elsif, else statement:
def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  else person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# 7 ACCOUNT BALANCE
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  # balance = calculate_balance(month) // you need to accumulate the balance. This reassigns balance to whatever the next month's balance is.
  balance += calculate_balance(month)
end

puts balance

# 8 COLORFUL THINGS
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  # break if i > colors.length // The index of an array starts at 0, so this will break after the counter reaches a number greater than the index length.
  #The colors[i] will return nil (because outside of array scope) and nil cannot be converted to string.
  
  break if i == colors.length - 1 # could also use the shorter things array to break

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
# further exploration: how can you change the break condition such that the loop always stops once we hit the end of the shorter array?
# could add an if/else statement to test which array is shorter. or this, from user solution: break if colors[i] == nil || things[i] == nil

# 9 DIGIT PRODUCT
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1 # changed from 0 to 1 because starting at 0 will always give 0 when multiplying

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0
=end
# 10 WARRIORS AND WIZARDS
# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym # converted to symbol // book solution converts to sym like this character_classes[input.to_sym]

player.merge!(character_classes[input]) # added bang suffix so that stats are reflected as changed. Could also reassign the hash to a new variable (or same variable, player)

puts 'Your character stats:'
puts player