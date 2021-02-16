# I didn't get the challenge question, so after understanding the solution and taking a break, now re-doing the solution without looking.

# The given array of words
words =  ['demo', 'none', 'tied', 'evil','dome', 'mode', 'live','fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide','flow', 'neon']

# The hash that will contain the key (sorted string) and value (array).
hash = {}

# Block on the words array that will either create a key if it hasn't been created already, or push a word to an already existing key
words.each do |word|
  key = word.chars.sort.join # chars divides the word into letters in an array, sort arranges alphabetically, join puts it back into a string
  if hash.has_key?(key) # checks to see if the key has already been created with a previous anagram
    hash[key].push(word) # if it is true, a key has already been created, push the current word iteration to the value. The .push method only works on arrays.
  else
    hash[key] = [word] # if there hasn't been a key created, create one and assign a word in an array to that key.
  end
end

hash.each_value { |v| p v }

=begin
Takeaways: I was stuck on the fact that I 
created the alphabetized string as the value 
and was trying to use the words as the key. 
I didn't think outside the box to understand
I could create a key at the same time as deciding 
what to do with a word. In another words, I didn't 
realize I should check the key along with the word
in the same iteration.
=end