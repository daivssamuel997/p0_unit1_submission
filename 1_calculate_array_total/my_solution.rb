# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# we need a function that takes in an array
# for the second function, I need to bring in an array.
# What is the output? (i.e. What should the code return?)
# the code should return the sum of the array. Also, it should return a sentence with a capital letter for the first 
# letter and end with a period.
# What are the steps needed to solve the problem?
# For the first function, I need to bring an the array. I will use a while loop and iterate thorugh the array
# by figuring out the length of the array by using .length on the paramenter. I will inicialize sum to 0 and add sum
# to array[i] together to get the sum. Then return it. 

# For the second function, I need to bring in the array and  I will iterate through it again just like the first
# funciton. I will use .Upcase to make the first spot capital and end it with a period.

# 2. Initial Solution
total(array)
{
	len = array.length
	i = 0
	sum = 0

	while i < len do 
	{
		sum = sum + array[i]
		i = i + 1
	} end
	return sum
}

sentece_maker(array)
{
	len = array.length
	i = 0

	while i < len do
	{
		if i == 0
		{
			string = array[i].Upcase
		}

		else
		{
			string = string + " " + array[i]
		}

		i = i + 1
	} end
	string = string + "."

	return string
}



# 3. Refactored Solution



# 4. Reflection 
