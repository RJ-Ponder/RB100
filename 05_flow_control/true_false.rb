=begin from "True and False"
a = ""
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
=end

=begin from exercise 1
puts (32 * 4) >= 129 #false 
puts false != !true #false
puts true == 4 #false
puts false == (847 == '874') #true
puts (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false #true
=end

#from exercise 6

(32 * 4) >= "129" #false <= my initial guess was wrong, actually raises an error because can't compare > or < with two different types.
# (But can compare with == to see if identical or not)
847 == '874' #false
'847' < '846' #false
'847' > '846' #true
'847' > '8478' #false
'847' < '8478' #true