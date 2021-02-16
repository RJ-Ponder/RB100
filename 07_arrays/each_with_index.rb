# Exercise 7

# note: from exercise 6, you can replace an item in an array by setting the indexed part to a new item
# e.g. array = ['a', 'b', 'c']
#       array[2] = 'd' ----> now array = ['a', 'b', 'd']

array = [5, 10, 15, 20, 25]
array.each_with_index { |value, index| puts "Index: #{index}, Value: #{value}" }