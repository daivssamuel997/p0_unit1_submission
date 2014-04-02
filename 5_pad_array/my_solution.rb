# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: ].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
#The input is a value of the minimum_size to pad the array. I also brought
#in a val of nil, which was optional.

# What is the output? (i.e. What should the code return?)
#The output should be a correctly padded array to the neccessary requirements.
# What are the steps needed to solve the problem?
#In both cases, I need to check if the array's length is bigger than the input size, if so, then I can return it. Otherwise, I need to create space for the array by taking the difference of the min size and the array's length and pushing it to the array.


# 2. Initial Solution
class Array
    def pad!(minimum_size, val = nil)
        array_space = minimum_size - self.length
        
        if (minimum_size <= self.length)
            return self
    
        else
            array_space.times { self.push(val) }
            return self
        end
    end

    def pad(minimum_size, val = nil)
        new = self.clone
    
        array_space = minimum_size - self.length
    
        if (array_space > 0)
            array_space.times { new.push(val) }
            return new
        
        else
            return new
        end
   
    end

end # end of class





# 3. Refactored Solution
#I don't really have anything to change here. Everything is short and consise. The variable names are fitting. '


# 4. Reflection
#What parts of your strategy worked? What problems did you face?

#This particular project took me quite awhile to understand and I am still not even sure that I understand it completely. I spent a good amount of time researching and I need to spend some more time on it.


#What questions did you have while coding? What resources did you find to help you answer them?

#I really wanted to understand what the whole destructive thing meant. I went to stackoverflow, a few other sites, and even saw some of my peers work for guidance. This was all very new and confusing. I know I need more practice.


#What concepts are you having trouble with, or did you just figure something out? If so, what?

#I understand the gist of it, but I def need more practice with the whole thing.


#Did you learn any new skills or tricks?

#I learned the idea of cloning something though. This was very cool!


#How confident are you with each of the learning objectives?

#Not that confident. Need a bit more practice.


#Which parts of the challenge did you enjoy?

#I really enjoyed the challenge and I can't wait for more!'


#Which parts of the challenge did you find tedious?

#Nothing.