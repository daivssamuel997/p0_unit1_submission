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
{
  i = 0
  array = array.sort
  
  if array.length % 2 == 0
    return ((array[array.length/2 - 1] + array[array.length/2])/2)
  end
  
  else
    return array[array.length/2]
  end
}

require_relative "my_solution"

describe 'median' do
  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7] }
  let(:array_3) { [7, 4, 3, 5, 6, 2, 6, 4] }
  let(:array_4) { ["apple", "cherry", "banana"]}

  it "is defined as a method" do
    defined?(median).should eq 'method'
  end

  it "requires a single argument" do
    method(:median).arity.should eq 1
  end

  it "returns the correct median of an odd-length array" do
    median(array_1).should eq 4
  end

  it "returns the correct median of an even-length array" do
    median(array_2).should eq 5.5
  end
  
  it "returns the correct median for an unsorted array" do
    median(array_3).should eq 4.5
  end

  it "returns the correct median for an array filled with strings **BONUS**" do
    median(array_4).should eq "banana"
  end

end



# 3. Refactored Solution



# 4. Reflection 
