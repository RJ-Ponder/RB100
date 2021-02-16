# Exception Handling Example

begin # reserved word
  # perform some dangerous operation
rescue # r.w.
  # do this if operation fails
  # for example, log the error
end # r.w.

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end