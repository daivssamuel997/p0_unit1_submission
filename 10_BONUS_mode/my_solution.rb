# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution


def mode(a)
  b = Hash.new(0)
  final = []
  max = 1
  a.each do |x|
    b[x] +=1
    if b[x] >= max
     max = b[x]
     end
  end

  b.each do |x,y|
    if max == y
      final<< x
    end
  end
  return final
end


# 3. Refactored Solution



# 4. Reflection 