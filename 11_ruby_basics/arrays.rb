# 1 NEW PET
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]
puts "I have a pet #{my_pet}!"

# 2 MORE THAN ONE
my_pets = pets[2, 2] # instead of selecting starting from index 2 and having 2 elements as shown here...
# the book uses pets[2..3] to select a range, index 2 through 3.
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# 3 FREE THE LIZARD
my_pets.pop
puts "I have a pet #{my_pets[0]}!"

# 4 ONE ISN'T ENOUGH
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
# my_pets << 'dog' # or my_pets.push('dog')
# my solution above wasn't exactly right. I should reference the pets array to get 'dog' not just write it:
my_pets << pets[1]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# 5 WHAT COLOR ARE YOU?
colors = ['red', 'yellow', 'purple', 'green']
colors.each { |color| puts "I'm the color #{color}!" } # iterates over an array.

# 6 DOUBLED
numbers = [1, 2, 3, 4, 5]
doubled = numbers.map { |num| num * 2 } # iterates over an array and returns another array.
p doubled

# 7 DIVISIBLE BY THREE
numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select { |num| num % 3 == 0 }
p divisible_by_three

# Difference between map and select:
#map returns a new array with each element transformed based on the block's return value.
#select returns a new array containing elements selected only if the block's return value evaluates to true.

# 8 FAVORITE NUMBER (PART 1)
# (no code necessary)
original = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
group1 = ['Dave', 7]
group2 = ['Miranda', 3]
group3 = ['Jason', 11]
nested = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# 9 FAVORITE NUMBER (PART 2)
flattened = nested.flatten # with the bang suffix it will mutate the caller. (is destructive, modifies the original)
p flattened

# 10 ARE WE THE SAME?
array1 = [1, 5, 9]
array2 = [1, 9, 5]
puts array1 == array2 # for arrays to be equal, they need to have the same number of elements and each element in one array must be the same as the corresponding element in the other.