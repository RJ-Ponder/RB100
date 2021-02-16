# Exercise 1 reworked without looking

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
immediate_family = family.select { |k,v| k == :sisters || k == :brothers }
# making it values only and one dimensional
p immediate_family.values.flatten
# p immediate_family # showing that values and flatten are not destructive (do not mutate the caller). Save as a new variable if you want to keep it.