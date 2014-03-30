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
#For this assignment I paired with Adam Dziuk. We both were able to solve this assigment without any issues
# What questions did you have while coding? What resources did you find to help you answer them?
# I didnt have any questions as such. I got to learn a new method 'reduce' as part of this challenge
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None. Yes learnt a new method reduce
# Did you learn any new skills or tricks?
# Yes learnt a new method reduce
# How confident are you with each of the learning objectives?
# Very confident
# Which parts of the challenge did you enjoy?
# Pairing with Adam helped me learn some new tricks.
# Which parts of the challenge did you find tedious?
# None