# Exercise 1

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
=begin          
immediate_fam = family.select { |k, v| k == :sisters || k == :brothers } # Line 9 in case it gets moved.
immediate_fam.to_a.flatten

Line 9 was my genuine use of the select method, which was correct. However, I was stumped on how to pull only the values and get rid of the nesting.
I completely forgot about the values method for hashes (keys and values method returns arrays for hashes, and also forgot about the flatten method for arrays.
I was thinking of different things like first and last and pop to get the array right, but those were too manual.
=end

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten # the book solution utilizes the method "values" which takes the values of the hash and returns them in an array
# then the flatten method turns the two dimesional array into a one dimensional.

p arr