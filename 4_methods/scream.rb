def scream(words)
  words = words + "!!!!"
  # return
  puts words
end

scream("Yippeee")

# It is important to remember that even though "return" was commented out so that
# it doesn't return and exit the method early, it is still returns nil because
# the last line is a puts expression, and puts returns nil