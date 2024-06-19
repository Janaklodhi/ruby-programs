# # this brute force approach time complexity  0(n)^2
require "byebug"
def duplicate_elements_in_array(nums)
  for i in 0...(nums.length)
    for j in i + 1...(nums.length)
      if nums[i] == nums[j]
        return nums[i]
      end
    end
  end
  nil
end

nums = [1, 2, 3, 4, 4]
puts duplicate_elements_in_array(nums)

# efficient approach, set or hashing approach time complexity 0(n)
require "byebug"
require "set"

def duplicate_elements_in_array(nums)
  sets = Set.new
  nums.each do |num|
    return num if sets.include?(num)
    sets.add(num)
  end
  nil
endc
nums = [1, 2, 3, 4, 4]
puts duplicate_elements_in_array(nums)
