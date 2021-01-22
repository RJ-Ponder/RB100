# Exercise 2

def all_caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts all_caps("abcdefghij")
puts all_caps("abcdefghijk")