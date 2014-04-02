# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Adam Dziuk

# 1. Pseudocode

# What is the input? 
#Input will be an array of scores.
# What is the output? (i.e. What should the code return?)
# Output will be a letter grade based on the average score.
# What are the steps needed to solve the problem?
# Create a method get_grade that will accept one parameter that will be an array.
# Use the 'each' method and compute the sum of the elements in the array
# Compute the average by dividing the sum of the array by its length.
# if (average >= 90) return A
#elsif (average >=80) return B
#elsif (average >=70) return C
#elsif (average >=60) return D
#else return F



# 2. Initial Solution

# def get_grade(array)
#   sum = 0
#   array.each do |x| sum +=x end
  
#   average = sum.to_f/array.length
  
#   if (average >= 90)
#     'A'
#   elsif (average >= 80)
#     'B'
#   elsif (average >=70)
#     'C'
#   elsif (average >=60)
#     'D'
#   else 
#     'F'
#   end
    
#     end

    #Refactored Solution

#updated argument from 'array' to 'scores'
#used array.reduce method 
    def get_grade(scores)
  
 sum =  scores.reduce(:+)
  
  average = sum.to_f/scores.length
  
  if (average >= 90)
    'A'
  elsif (average >= 80)
    'B'
  elsif (average >=70)
    'C'
  elsif (average >=60)
    'D'
  else 
    'F'
  end
    
    end

    #Reflections
#     What parts of your strategy worked? What problems did you face?
#I just had syntax issues, which I figured out through trial and error. Overall, I didn't really struggle with this one. 
# What questions did you have while coding? What resources did you find to help you answer them?
# I didnt really have any questions with this one. 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# No trouble with this. Just really concentrated on working on syntax things. 
# Did you learn any new skills or tricks?
# Just the flow of ruby. 
# How confident are you with each of the learning objectives?
# Very confident
# Which parts of the challenge did you enjoy?
# Everything. This was a fun little challenge. It served as a good warmup for the harder ones. 
# Which parts of the challenge did you find tedious?
# None
