# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# The input is an array of grades. I need to calculate the average. 
# What is the output? (i.e. What should the code return?)
# The code should return the letter grade that represents the calcuated average grade.
# What are the steps needed to solve the problem?
# First, need to calculate the average of the grades in the array.
# Then, use some if statements to find what grade it is.
# Then, return it. 


# 2. Initial Solution
# get_grades(array)
# {
#   i = 0
#   sum = 0
#   avg = 0
  
#   while i < array.length do
#   {
#     sum = sum + array[i]
#     i = i + 1
#   } end
  
#   avg = sum/array.length
  
#   if avg >= 90
#     return "A"
#   end
  
#   if avg >= 80
#     return "B"
#   end
  
#   if avg >= 70
#     return "C"
#   end

#   if avg >= 60
#     return "D"
#   end
  
#   else
#   return "F"
#   end
# end
# }



# 3. Refactored Solution
get_grades(array)
{
  i = 0
  sum = 0
  avg = 0
  
  if array == NULL
    return NULL
  end
  
  while i < array.length do
  {
    sum = sum + array[i]
    i = i + 1
  } end
  
  avg = sum/array.length
  
  if avg >= 90
    return "A"
  end
  
  if (avg >= 80 && avg < 90)
    return "B"
  end
  
  if (avg >= 70 && avg < 80)
    return "C"
  end

  if (avg >= 60 && avg < 70)
    return "D"
  end
  
  else
  return "F"
  end
end
}

require_relative 'my_solution'

describe 'get_grade' do
  let(:arrayA) { [100,90,100,99,99]}
  let(:arrayB) { [80,90,80,89,98]}
  let(:arrayC) { [70,80,70,79]}
  let(:arrayD) { [60,67,70,63]}
  let(:arrayF) { [50,40,0,99,9]}
  
  it 'is defined as a method' do
    defined?(get_grade).should eq 'method'
  end
  it 'returns "A" when the average is >= 90' do
    get_grade(arrayA).should eq "A"
  end
  it 'returns "B" when the average is >= 80' do 
    get_grade(arrayB).should eq "B"
  end
  it 'returns "C" when the average is >= 70' do
    get_grade(arrayC).should eq "C"
  end
  it 'returns "D" when the average is >= 60' do
    get_grade(arrayD).should eq "D"
  end
  it 'returns "F" when the average is < 60' do
    get_grade(arrayF).should eq "F"
  end
  
end

# I just wanted to ensure that it went through the if statements correctly to return the grade. I also wanted to 
# account for the array equaling NULL. 


# 4. Reflection 
# This assignment was fun because it was like a step higher than the socrates practice that we did earlier. We had to
# combine two skills really in this one, finding the average and using if statements. I had a clear plan with this
# project and that was evident by the pseudo code that I wrote. Every time that you do more practicing, things always
# seem to get easier. I am ready to keep moving forward. 
