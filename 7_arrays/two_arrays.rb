# Exercise 2
arr = ["b", "a"]
arr = arr.product(Array(1..3)) #creates an array [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last) #takes the first ["b", 1] and deletes the last of the first --> 1 which is destructive (modifies arr) 

arr = ["b", "a"]
arr = arr.product([Array(1..3)]) #creates an array [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
arr.first.delete(arr.first.last) #deletes [1, 2, 3]

# easier to see in irb, step by step.