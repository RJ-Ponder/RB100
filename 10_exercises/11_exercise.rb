#Exercise 11
#Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
# my solution
joe = {}
sally = {}

flat_data = contact_data.flatten

joe[:email] = flat_data[0]
joe[:address] = flat_data[1]
joe[:phone] = flat_data[2]
  
sally[:email] = flat_data[3]
sally[:address] = flat_data[4]
sally[:phone] = flat_data[5]

contacts["Joe Smith"] = joe
contacts["Sally Johnson"] = sally

# book solution. I didn't realize you could reference different parts of the array or hash for nested arrays and hashes.
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# I played around in irb to try and understand referencing multiple groups. I will rewrite this answer without looking in another file.