# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  
  output = []
  a = []
  source.each do |x|
   		a = x.to_s.split("")
  	 		if a.include?(thing_to_find)
  				output << x
  			end
  		end

  	return output

end



def my_hash_finding_method(source, thing_to_find)

   output = []
   source.each do |x,y|
        if (y==thing_to_find)
          output << x
        end
    end
    return output
end


# Identify and describe the ruby method you implemented. 
# My first method is my_array_finding_method that takes an array 'source' and a string 'thing_to_find' and returns only the elements in the array that contain the string
#To implement this I first defined two empty arrays 'output' and 'a'. I think looped through all the elements of the array 'source' using the .each method.
# When I get the first element of the array I use the 'split' method with pattern as 'empty string' and put it in another array 'a'. I then used the 'include?'
#method to check if the 'thing_to_find' string is in array a. If it is then I put that element from 'source' array into the output arrray. In the end I return
#the output array.

# My second method is the my_hash_finding_method, which takes two inputs - a hash 'source' and a string 'thing_to_find' and it returns the 'key' elements of 
#hash if the 'value' matches 'thing_to_find.First I declare an empty array called 'output'. I then loop through all the elements of the 'source' hash using the '.each method'.
# I then check if each of the 'value' of key,value pair equals 'thing_to_find'. If it does then I put the 'key' in the output array and then return the output.


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


# Person 3
def my_array_sorting_method(source, thing_to_locate)
  # Your code here!
end

def my_hash_sorting_method(source, thing_to_locate)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# 
# 
# 
# 
# 