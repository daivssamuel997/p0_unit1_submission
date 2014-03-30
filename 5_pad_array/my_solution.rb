# U1.W3: Pad an Array!

# I worked on this challenge by myself

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# input is a number that the array needs to be padded with and a optional argument to padd the array with
# What is the output? (i.e. What should the code return?)
# output is the padded array 
# What are the steps needed to solve the problem?

# Define a class Array
# Define two method pad! and pad which take *n as a argument (this is called splat argument)
# since n is a splat argument it can be used as an array
# if (self.length)>= n[0]
#return self  (here self refers to instance that invokes the method, so if you call [1,2,3].pad(), self = [1,2,3])
# else
# Store value of n[0] - self.length in variable i
# if n[1] = nil {add nil to self 'i' times}
#else {add n[1] to self 'i' times}
#end
#return self
#end
# In the pad! method I am first assigning value of self.clone to a variable a


# 2. Initial Solution


class Array
    def pad!(*n)
        if self.length >= n[0]
    	return self
        else 
        i = n[0]-self.length
        if n[1].nil?
         i.times{self.push(nil)}
          else
            i.times{self.push(n[1])}
	    end
return self
end
end


def pad(*n)
        
      
 a = self.clone
if a.length >= n[0]
        return a
        
    else 
        i = n[0]-a.length
        
        
        
        if n[1].nil?
         
          i.times{a.push(nil)}
          
        else
            
          i.times{a.push(n[1])}
	    end

return a
end
end
end


# 3. Refactored Solution



# 4. Reflection 
#What parts of your strategy worked? What problems did you face?
# Coming with the main logic to pad array was straightforward. I did face challenges on how to implement the solution in terms of using 'self'. I originally started using
# instance and class variables and that didnt work. I am still unclear of when to use instance/class variables vs self. From what I understood is self refers to 
# the instance that invokes the method. 
# What questions did you have while coding? What resources did you find to help you answer them? 
# I mainly had throuble with self. I searched google to understand 'self' functionality
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Yes I learnt about 'self' keyword
# Did you learn any new skills or tricks?
# yes on how to use self
# How confident are you with each of the learning objectives?
# Pretty confident
# Which parts of the challenge did you enjoy?
# the logic to come up with padding the array
# Which parts of the challenge did you find tedious?
# implementing self took time since I originally was implementing class and instance variables..