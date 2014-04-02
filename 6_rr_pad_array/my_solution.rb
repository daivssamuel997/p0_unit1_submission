# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    What I learned from this solution
#I learned how to effected use the "until" keyword. It was really awesome to see simmilar code as mine implimented in a different fashion. He also moves the bits with the << operator. I will need a little more explaining on that.
# Copy solution here:
=begin
class Array
	def pad(min_size, optional_value = nil)
		array_clone = self.clone
		array_clone << optional_value until array_clone.length >= min_size
		return array_clone
	end
    
	def pad!(min_size, optional_value = nil)
		self << optional_value until self.length >= min_size
		return self
	end
end
=end




# 2. Second Person's solution I liked
#    What I learned from this solution
#I like that this person goes about the input in a different way. They bring in a pointer and get the value by calling the 0 spot of the array. It is very cool to see the problem handled in this manner.
# Copy solution here:

=begin
class Array
    def pad!(*n)
        if self.length >= n[0]
            return self
            else
            pad= n[0]-self.length
            if n[1].nil?
                pad.times{self.push(nil)}
                else
                pad.times{self.push(n[1])}
            end
            return self
        end
    end
    
    
    def pad(*n)
        a = self.clone
        if a.length >= n[0]
            return a
            else
            pad = n[0]-a.length
            if n[1].nil?
                pad.times{a.push(nil)}
                else
                pad.times{a.push(n[1])}
            end
            return a
        end
    end
end
 =end


# 3. My original solution:
=begin
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
 
=end


# 4. My refactored solution:
class Array

    def pad!(minimum_size)
        array_space = minimum_size - self.length
        
        if (minimum_size <= self.length)
            return self
            
            else
            array_space.times { self.push(nil) }
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

end



# 5. Reflection
#What parts of your strategy worked? What problems did you face?

#This one was a little bit easier than project 5 due to the fact I was inspecting code and learning from it this time. I know that it was beneficial to see other peoples code and I know that I have a lot to learn. In the pad! method, I deleted the val = nil and just did push(nil). It worked like a charm.


#What questions did you have while coding? What resources did you find to help you answer them?

#I still was confused on some things, so I googled them. Stackoverflow really seems to have some good answers.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

#It is making more sense now.


#Did you learn any new skills or tricks?

#Cloning. Also was introduced to the * pointer.


#How confident are you with each of the learning objectives?

#Little more confident than project 5. 


#Which parts of the challenge did you enjoy?

#I really enjoyed the challenge and I can't wait for more!'


#Which parts of the challenge did you find tedious?

#Nothing.