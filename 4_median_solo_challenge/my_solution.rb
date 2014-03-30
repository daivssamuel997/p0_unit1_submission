# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input?
# Input it an array
# What is the output? (i.e. What should the code return?)
# Output is the median of the array
# What are the steps needed to solve the problem?
# Define a method called median that takes the argument as an array
#Use the array.sort method to sort the array
# Store the value of length of array divided by 2 in a variable called m
# if (length of array is divisible by 2 ) 
#    return (a[m] + a[m-1])/2)
#else
# return a[m]



# 2. Initial Solution
# def median(array)


# array = array.sort
    

#     m = (array.length)/2

#     if (array.length % 2 ==0)


#         return ((array[m].to_f + array[m-1].to_f)/2)



#     else

#         return(array[m])
#     end

# end



# 3. Refactored Solution

def median(num)


num = num.sort
    

    m = (num.length)/2

    if (num.length % 2 ==0)


        return ((num[m].to_f + num[m-1].to_f)/2)



    else

        return(num[m])
    end

end




# 4. Reflection 
# What parts of your strategy worked? What problems did you face?
# Having done a similar assignment in javascript helped. I didnt face any problems
# What questions did you have while coding? What resources did you find to help you answer them?
# None. I was quite confident about this and didnt have any issues.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
#None.
# Did you learn any new skills or tricks?
# No, I had done this assignment before.
# How confident are you with each of the learning objectives?
# I am very confident
# Which parts of the challenge did you enjoy?
# Getting 0 failures
# Which parts of the challenge did you find tedious?
# None