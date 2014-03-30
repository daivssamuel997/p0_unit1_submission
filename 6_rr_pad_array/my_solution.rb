# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge by myself



# 1. First Person's solution I liked
# Adam Dzuik
#    What I learned from this solution
# The variables are clearly defined and the logic itself is very easy to understand. In my case I defined a 'splat argument' 
#and that lead to couple of extra lines of code. I am going to use your solution to do some testing for Assignment # 6. Good work!
# Copy solution here:
# Adam's solution
# class Array
#     def pad(min, padding = nil)
#         spaces = min - self.length
#         padded = self.clone
#         if (spaces > 0)
#             spaces.times { padded.push(padding) }
#             padded
#         else
#             padded
#         end
#     end
    
#     def pad!(min, padding = nil)
#         spaces = min - self.length
#         if (spaces > 0)
#             spaces.times { self.push(padding) }
#             self
#         else
#             self
#         end
#     end
# end





# 2. Second Person's solution I liked
# Christiane Kammerl
#    What I learned from this solution
#I like how she has  called the pad@ method from the pad method instead of writing the code again. Great example of DRY!
# Copy solution here:
#Christian'es solution

#   class Array 
#     def pad!(min, x = nil)
#     len = self.length
#     if len < min
#       pad_num = (min - len)
#       pad_num.times do self.push(x) end
#     end 
#     return self
#   end


#   def pad(min, x = nil) 
#     padded_arr = self.clone
#     padded_arr.pad!(min, x)
#     return padded_arr
#   end
# end



# 3. My original solution:
# class Array
#     def pad!(*n)
#         if self.length >= n[0]
#     	    return self
#         else 
#           i= n[0]-self.length
#         if n[1].nil?
#          i.times{self.push(nil)}
#           else
#             i.times{self.push(n[1])}
# 	    end
# return self
# end
# end


# def pad(*n)
# a = self.clone
#   if a.length >= n[0]
#     return a
#   else 
#     i = n[0]-a.length
#     if n[1].nil?
#       i.times{a.push(nil)}
#     else
#       i.times{a.push(n[1])}
#     end
#   return a
# end
# end
# end


# 4. My refactored solution:
class Array
# Added two arguments instead of 1 splat argument
    def pad!(min,padding = nil)
    
    pad = min-self.length
    # Used criteria to see if the padding > 0 instead of my solution
    #where I am checking if the second argument is passed
     if pad > 0
     pad.times{self.push(padding)}
     end
     #took out else 
      return self
     
     
     end
     
     
     
    def pad(min,padding = nil)
    padded_arr = self.clone
    #used the already created pad! method to give back results.
  padded_arr.pad!(min,padding)
  return padded_arr
     end
     end



# 5. Reflection
# What parts of your strategy worked? What problems did you face?

# In this assigment I took a look at couple of my cohorts examples. I was really impressed with their solutions and learnt something new.

# What questions did you have while coding? What resources did you find to help you answer them?

# Adam and Christiane's solutions were very easy to understand and implement.

# What concepts are you having trouble with, or did you just figure something out? If so, what?

# I figured out I could have used the pad! method in my pad method instead of typing out the code again!

# Did you learn any new skills or tricks?
# Yes re-using the method. I knew about this , just didnt strike my mind when I was doing the assignment.
# How confident are you with each of the learning objectives?
# Pretty confident. I need more practise with self,class variables,instance variables etc
# Which parts of the challenge did you enjoy?
# Reading other people's solutions and getting new ideas on how to solve a problem was fun
# Which parts of the challenge did you find tedious?
# None.