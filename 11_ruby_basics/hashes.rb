# 1 FIRST CAR
car = { type: 'sedan', color: 'blue', mileage: 80_000 }

# 2 ADDING THE YEAR
car[:year] = 2003 # if you did car[:year] = 2004 now, it would modify the value in the existing key-value pair

# 3 BROKEN ODOMETER
car.delete(:mileage) # note that this returns the value

# 4 WHAT COLOR?
puts car[:color]

# 5 LABELED NUMBERS
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |k,v|
  puts "A #{k} number is #{v}." # note that there are two block parameters since a key and value are both passed into the block.
end

# 6 DIVIDED BY TWO
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map { |k,v| v / 2 } # this is enumberable#map, slightly different than array#map
#enumerable#map takes two block parameters. Returns an array even though it is invoked on a hash.
p half_numbers

# 7 LOW, MEDIUM, OR HIGH?
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |k,v| v < 25 } # unlike enumerable#map, hash#select returns a hash instead of an array, consisting of entries for which the block returns true.
p low_numbers

# 8 LOW OR NOTHING
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value| # bang suffix (!) added to make the method destructive (i.e. mutate the caller)
                 value < 25
               end
# note that the assignment above creates an alias where numbers and low_numbers are now pointing to the same hash.
p low_numbers
p numbers

# 9 MULTIPLE CARS
car_and_truck = { car: {type: 'sedan', color: 'blue', year: 2003}, truck: {type: 'pickup', color: 'red', year: 1998} }
# better formatting from book solution:
car_truck = {
              car:    {type: 'sedan', color: 'blue', year: 2003},
              truck: {type: 'pickup', color: 'red', year: 1998}
            }

# 10 WHICH COLLECTION?
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}
# nested array:
car = [ [:type, 'sedan'], [:color, 'blue'], [:year, 2003] ]
