# Exercise 16 bonus. As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
=begin # My solution: not particularly smart and is based on the book's first solution.
key = [:email, :address, :phone]
contact_data.flatten!
contacts.each do |name, hash|
  key.each do |sym|
    hash[sym] = contact_data.shift
  end
end
p contacts
=end

# Book solution: uses index to get into the sub array and then run like normal
# each_with_index: Calls block with two arguments, the item and its index, for each item in enum. Given arguments are passed through to each().
key = [:email, :address, :phone]
contacts.each_with_index do |(name, hash), idx|
  key.each do |key|
    hash[key] = contact_data[idx].shift
  end
end

p contacts