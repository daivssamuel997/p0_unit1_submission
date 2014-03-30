# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: ].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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