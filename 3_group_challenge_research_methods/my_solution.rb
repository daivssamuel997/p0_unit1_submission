# U1.W3: Research Methods

=begin
i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}
 =end

# Aki
# Person 1's solution
# Pseudocode 1
# For each value in array, verify if value includes thing_to_find
# If thing_to_find = True, then select the value

# Pseudocode 2
# Create newArray bucket for output
# for each key/value pair in source, push key value into newArray if value matches the thing_to_find
# Return the newArray results	

=begin
def my_array_finding_method(source, thing_to_find)
  source.select{|value| value.to_s.include?("#{thing_to_find}")}
end

def my_hash_finding_method(source, thing_to_find)
  newArray = []
  source.each { |key,value| newArray << key if value == thing_to_find }
  return newArray
end
=end
 
# Identify and describe the ruby method you implemented. 
# For 1, I went pretty Zen and didn't even create an array variable.  By using the .select method, I went thru all values to see if any of it contained the thing_to_find. 
# The trickiest part of the challenge was to be able to look into any type of variable, thus why I added the .to_s to the value first to match up apples to apples.  
# For 2, I couldn't think of any shorter way to do it.  To look into a hash, I had to go through each key value pair, and I couldn't find a shorthand command like array.select which automagically creates an array for me.
# As a result, I declared the array container first and pushed into it everytime there was a value match. 

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Clark
# Person 3
def my_array_sorting_method(source)
  return source.push(thing_to_locate).sort_by{|word| word.downcase}
end

def my_hash_sorting_method(source)
  return source.sort_by{|name, age| age}
end

=begin Pseudocode

1.sort_by would be a good way to sort. Can also use .sort.
2.Only need one argument to alphabetize, so we'll just push thing_to_locate inside the array.
3.use .downcase in sort_by do block to ensure that things are alphabetized correctly.
4.source will be the array

1.Same situation as top, only sort_by contains enumerable in this case
2.Since we're using numbers, no need to use .downcase
3.
4.

=end
# Identify and describe the ruby method you implemented. 

# =>          Part 1:

# I used both .sort_by and .downcase. sort_by is slightly different from .sort, it takes one parameter and creates a temporary array for all of the items.
# sort_by is more useful than .sort when there are more extensive things to calculate.
# .downcase added in the .sort_by do block makes it alphabetize things correctly, the test is wrong. My code works perfectly, what they're looking for isn't alphabetized
# if you don't call .downcase, the capital words are sorted before the lowercased words. If I wanted to get the result they wanted I wouldn't call .downcase

#below is how to get the answer they were looking for

#def my_array_sorting_method(source, thing_to_locate)
  #return source.push(thing_to_locate).sort
#end

# => 				Part 2:

#Same situation as last time, only now we're sorting for age over name and don't need downcase.
#
#

# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
  return source.delete_if{|value| value.to_s.include?("#{thing_to_find}")}
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
  return source.delete_if {|key, value| key == thing_to_delete}
end

i_want_pets = ["I", "want", "3", "but", "have", "only", "4" ]
my_family_pets_ages = {
    :Annabelle => 2,
	:Ditto => 5,
	:Hoobie => 5,
	:Bogart => 6,
	:Poly => 6,
	:Evi => 8,
	:George => 14
}

# Identify and describe the ruby method you implemented. 
# For the first part, I used the delete_if method and by going through the array to see if the value in the array had the "thing_to_find" in it, I was able to narrow down which values to delete. I then returned the array.
#By researching arrays on the roc-doc.org site, I was able to figure out that delete_if is a pretty useful method.
# The hash method was a little more difficult for me. After doing some research, I decided to go ahead and use the delete_if method again. By coming the values with the keys, I can figure out which items to delete. I then returned the source.


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.
=begin
p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
 =end
p my_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
#What parts of your strategy worked? What problems did you face?

#At first, nothing really seemed to work for me. I struggled with this for a bit, but after doing some research, I was able to narrow down a method to use.


#What questions did you have while coding? What resources did you find to help you answer them?

# While coding, I wondered the difference between an array and a hash. They are similar but different. It was an interesting read. Still need more practice though on them.


#What concepts are you having trouble with, or did you just figure something out? If so, what?

#I understand the gist of it, but I def need more practice with the whole thing.


#Did you learn any new skills or tricks?

# I learned how to delete from arrays and hashes. Also, by seeing what my partners did, I was able to get an idea of how to do several other things.


#How confident are you with each of the learning objectives?

# I am somewhat confident. I am going to spend some more time on this later though.


#Which parts of the challenge did you enjoy?

#I really enjoyed the challenge and I can't wait for more!'


#Which parts of the challenge did you find tedious?

#Nothing.
