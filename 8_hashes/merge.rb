# Exercise 2

# note: merge is a hash method, not an array method

hash_a = {name: "RJ", age: 27, hair: "brown"}
hash_b = {height: "6 ft", weight: 160}

puts "w/out bang suffix"
p hash_a.merge(hash_b)
p hash_a
p hash_b

puts "changing the order"
p hash_b.merge(hash_a)
p hash_a
p hash_b

puts "w/ bang suffix"
p hash_a.merge!(hash_b)
p hash_a
p hash_b

# conclusion: the bang suffix makes merge destructive, that is, it mutates the caller and changes hash_a permanently.
# the hash that the method is called on becomes the merged hash and the hash passed as an argument is unaffected.