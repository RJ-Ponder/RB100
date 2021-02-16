# Exercise 8 "Anagram Challenge"
# Write a program that takes the following words and prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different order.
# Your output should be multiple arrays, each a group of anagrams.

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
# hash = {}          
# values = words.map { |element| hash[element] = element.chars.sort.join }
# Key is the original word. Value is the word with each letter in alphabetical order
# When values are equal to each other, return the keys in its own array.

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word] # this line makes the key an array that can take the .push method, as opposed to string key "#{word}"
  end
end

result.each_value do |v|
  puts "------"
  p v
end