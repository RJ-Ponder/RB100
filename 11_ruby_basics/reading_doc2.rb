# Reading Documentation 2, Exercise 3 Optional Arguments

# What will each print?
s = 'abc def ghi,jkl mno pqr,stu vwx yz'

# split: splits a string using the argument as a delimeter. 
# inspect: returns a string surrounded by quote marks with special characters escaped.
# While I don't fully understand escaping, it is a \ in front of the character. Quote marks are escaped.

# split with no delimeter uses the space as the delimeter and returns an array of strings.
# s.split will return: ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
# .inspect will return the above with an escaped "\" in front of every quotation and surrounds it with quotes
puts s.split.inspect

#s.split(',') will return: ["abc def ghi", "jkl mno pqr", "stu vwx yz"]
#.inspect will return: "[\"abc def ghi\", \"jkl mno pqr\", \"stu vwx yz\"]"
puts s.split(',').inspect

# the second argument is a limit, which tells the split how many you want and ignores delimeters the rest of the way
#s.split will return: ["abc def ghi", "jkl mno pqr,stu vwx yz"]
#.inspect will return: "[\"abc def ghi\", \"jkl mno pqr,stu vwx yz\"]"
puts s.split(',', 2).inspect

# keep in mind that puts returns nil and only puts the string?
# inspect is the same thing as to_s, but it escapes special characters.

# see that inspect turns the array into a string. Puts doesn't print \ 
> s.is_a? String
 => true
> s.is_a? Array
 => false
> s.split.is_a? String
 => false
> s.split.is_a? Array
 => true
> s.split.inspect.is_a? String
 => true
> s.split.inspect.is_a? Array
 => false