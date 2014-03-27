# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input?
# Input is an array of Numbers
# What is the output? (i.e. What should the code return?)
# Code should return the sum of elements of the array
# What are the steps needed to solve the problem?

#total : - 

# Create a method 'total' that takes array as a input parameter
# Declare variable total and set it to 0
# Use the .each method and loop through all the elements of the array and add it to variable total
# Return the variable total as the output

#sentencemaker

# Create a method 'sentence_maker' that takes array as a input parameter
# Declare variable sentence and set it to 0
# Capitalize the first element of the array using 'capitalize' method
# Use the .join method to add the elements of the array seperated by 'space' and add 'period' at the end
# 
# Return the variable sentence as the output


# 2. Initial Solution

# def total (array)

# 	total = 0
# 	array.each do |x|
# 		total +=x
# 	end

# 	return total





# end

# def sentence_maker(sentence)

# sentence[0] = sentence[0].capitalize
# sentence.join(" ")+"."

# end




# 3. Refactored Solution


def total (a)

	a.reduce(:+)

end

def sentence_maker(sentence)

sentence[0] = sentence[0].capitalize
sentence.join(" ")+"."

end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# I didnt face any problems. Having done similar exercises in the past helped. I also got to know the array 'reduce' method from Adam when I did a pairing session with him
# What questions did you have while coding? What resources did you find to help you answer them? 
# I didnt have any questions. I just was curios to know if I could make my sentence_maker method even smaller.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I am not having trouble with concepts so far. Yes I recently learnt the 'reduce' method.
# Did you learn any new skills or tricks?
# Yes recently learnt the 'array reduce ' method
# How confident are you with each of the learning objectives?
#Yes
# Which parts of the challenge did you enjoy?
# Just coding it and seeing 0 failuers :)
# Which parts of the challenge did you find tedious?
#None