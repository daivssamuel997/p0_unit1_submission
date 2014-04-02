# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# The input is an array of either numbers or words.
# What is the output? (i.e. What should the code return?)
# The output should be the median in terms of numbers or starting letter in the alphbet.
# What are the steps needed to solve the problem?
# I need to find the sort the array, then find the length of it, and return the middle number (len/2).

# 2. Initial Solution

def median(array)

    i = 0
    array = array.sort
        
    if array.length % 2 == 0 then
        return ((array[array.length/2 - 1] + array[array.length/2])/2.0)
    end
        
    else
    return array[array.length/2]
end



# 3. Refactored Solution
#I think my code is already concise and to the point. All of the magic happens in just a few lines.


# 4. Reflection
#This was really fun for me. After really struggling to understand the terminal for so long,
#I actually feel confident that I am getting better at it. This is exciting for me and I can't 
#wait to learn more. Some strategies that I had were to just think of this one super logically. I 
#have this many items in my array, after I sort it, I just need return the length/2 for odd arrays and 
#a bit more complicated one for even arrays. This was super exciting and I can't wait to get going on even 
#more problems. I am pumped!
