# Question # sort the zeros_ones_twos_in_array 
# Sort binary array in linear time

require "byebug"
def sort_colors(nums)
    zeros_count = 0
    ones_count = 0
    twos_count = 0
    for i in 0...nums.length
      if nums[i] == 0
        zeros_count += 1
      elsif nums[i] == 1
        ones_count += 1
      else
        twos_count += 1
      end
    end
    overwrite_array(nums, zeros_count, ones_count, twos_count)
end

def overwrite_array(nums, zeros_count, ones_count, twos_count)
    index = 0
    zeros_count.times do
        nums[index] = 0
        index += 1
    end

    ones_count.times do
        nums[index] = 1
        index += 1
    end
    
    twos_count.times do
        nums[index] = 2
        index += 1
    end
end

nums = [2, 0, 2, 1, 1, 0]
sort_colors(nums)
puts nums.inspect