# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Eiko

# 1. Pseudocode

# What is the input?
# Input is an array
# What is the output? (i.e. What should the code return?)
#  Output is the mode of the array - which means it will return an array that has the most frequencies
# What are the steps needed to solve the problem?
# Define a method called mode that takes input as an array a
# Declare variable b as Hash with default value 0
# Declare a empty array called final
# declare variable max and assign value 1 to it
# Loop through the array, for each element of array, Add key value pair to the Hash b, with the Key being 'array' elements and the value being frequency of each element
# if b[value]> = max
#max = b[x]
#Loop through the hash b
#if max = value
# Put Key in array final
#end
#return array final


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
# What parts of your strategy worked? What problems did you face?

# I paired with Eiko on this challenge. I had already come up with a solution and we did the 'Expert drive' method for this challenge. We didnt face any
#challenges as such. We got some errors when we ran the rspec, but then realized we had some incorrect variable declarations

# What questions did you have while coding? What resources did you find to help you answer them?

# We used the b= Hash.new(0) , we were confused on whey we had 0 in there. We then researched and found that doing it this way gives a default value
# of 0 to the Hash. So you can increment the values this way. If you dont use this you get an error cannot call method on nil.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None. It was pretty straightforward. Just the adding default value to Hash bit
# Did you learn any new skills or tricks?
# Yes declaring a value with default value of Hash
# How confident are you with each of the learning objectives?
# yes
# Which parts of the challenge did you enjoy?
# Pairing with Eiko was rewarding. Learnt some new things during our pairing session

# Which parts of the challenge did you find tedious?
# None.
