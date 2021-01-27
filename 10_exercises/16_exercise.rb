=begin Exercise 16. Challenge: In exercise 11, we manually set the contacts hash values one by one.
Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array.
Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array methods:
shift (removes and returns the leading element in an array) and first (returns the leading element in an array).
Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
=end
=begin
# My solution:
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

key = [:email, :address, :phone]
loop do
  if key != []
    contacts["Joe Smith"][key.shift] = contact_data.shift
  else
    break
  end
end

p contacts
=end
# Book solution: (from memory)
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

key = [:email, :address, :phone]
contacts.each do |name, hash|
  key.each do |sym|
    hash[sym] = contact_data.shift
  end
end
p contacts