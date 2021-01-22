# Exercise 1
f = "RJ"
l = "Ponder"
#puts "#{f} #{l}"
#puts "RJ " + "Ponder"

# Exercise 2
thousands = 3545 / 1000
hundreds = 3545 / 100 % 10
tens = 3545 / 10 % 10
ones = 3545 % 10
#puts "#{thousands}, #{hundreds}, #{tens}, #{ones}"

# Exercise 3
movies = {:"Beauty and the Beast" => 1991, :"Aladdin" => 1992, :"The Jungle Book" => 1994, :"Flubber" => 1997}
movies_syntax = {"Beauty and the Beast": 1991,
  "Aladdin": 1992,
  "The Jungle Book": 1994,
  "Flubber":1997 }
#movies.each{ |k,v| puts v }
#movies.each{ |k,v| puts v }
#puts "Or, individually:"
#puts movies[:"Beauty and the Beast"]

# Exercise 4
dates = [1991, 1992, 1994, 1997]
#puts dates[0]
#puts dates[1]
#puts dates[2]
#puts dates[3]

# Exercise 5
eight_f = 8*7*6*5*4*3*2*1
seven_f = eight_f / 8
six_f = seven_f / 7
five_f = six_f / 6
#puts [eight_f, seven_f, six_f, five_f]

# Exercise 6
puts 54.35 ** 2
puts 34.21 ** 2
puts 2.25435 ** 2

# you are creating a hash, but ended it with the wrong parentheses, should use curly.