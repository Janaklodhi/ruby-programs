
# 111  print the negative element in the array

require 'byebug'
def print_negative_element_of_array(array)
    new_array = []
    for i in 0...array.length
        if (array[i] < 0 )
            new_array.push(array[i])
        end
    end 
    return new_array
end
array = [-1,-10,100,5,61,-2,-23,8,-90,51]
print_negative_element_of_array(array) 

# we need to print all the  unique element of an array in ruby