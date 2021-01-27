# Exercise 15. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# I believe it will say "These hashes are the same!" because the only difference is order and new vs. old style, which I don't think matter for comparison.
# I was right.