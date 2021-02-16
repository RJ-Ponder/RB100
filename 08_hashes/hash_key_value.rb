# Exercise 3

hash_example = { key1: "value1", key2: "value2", key3: "value3", key4: "value4" }

# loops through and prints all the keys
hash_example.keys.each { |key| puts key }

# loops through and prints all the values
hash_example.values.each { |value| puts value }

# loops through and prints both
hash_example.each { |k,v| puts "Key: #{k}, Value: #{v}" }

# NOTE: alternatively, looking at the solution, I could have used the each_key and each_value methods.