def print_negative_element_of_array(array)
    byebug
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