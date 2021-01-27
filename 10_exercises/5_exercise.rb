# Get rid of 11. And append a 3.
array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
array.delete(11) # or array.pop (since 11 is at the end)
# NOTE: the delete method will delete every instance of the argument. e.g. if 11 is in the array twice, both will be deleted.
# you can use .delete_at(index) to delete a specific 11 if you know the index.
array.push(3)
puts array