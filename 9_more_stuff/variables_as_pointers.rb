# Notes from this topic.

# b doesn't reflect the value of a changing.
a = "hi there"
b = a
a = "not here"
puts b

# b does reflect the value of a changing.
a = "hi there"
b = a
a << ", Bob"
puts b

# Why is that? Variables are pointers to physical space in memory. Variables are essentially labels we create to refer to some physical memory address in your computer.
# In the first example, a = "not here" reassigned the variable a to a completely different address in memory; it's now pointing to an entirely new string. That was = does.
# Different memory space can actually hold the same value, but they are still different places. For example, a and b could have the same value but point to different spaces or addresses in memory.

# In the second example, the << operator mutated the caller, rather than reassigning a to a new string. The original string was modified, which was also pointed to by b.

# Key takeaway: Some operations mutate the address space in memory (example 2), but others simply change the variable to point to a different address space (example 1).

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
=begin What is a? What if we called map! instead of map from within the test method, how would that affect the value of a?
Remember when we're passing in arguments to a method, we're essentially assigning a variable to another variable, like we did with b = a.
Working with b in the test method may or may not modify the a in the outer scope, depending on whether we modify the address space in memory that a is pointing to.
Here, map does not modify the address space, but map! does.
=end