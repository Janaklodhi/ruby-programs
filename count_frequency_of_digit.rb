require 'byebug'
def count_frequency_of_digit(num)
    frequency_count = Hash.new(0)
    temp = num.abs
    while temp != 0
        digit = temp % 10
        frequency_count[digit] += 1
        temp /= 10
    end
    
    puts "Digit frequency in #{num}:"
    frequency_count.each do |digit, count|
        puts "Digit #{digit}: #{count} times"
    end
end

puts "Enter a number:"
num = gets.chomp().to_i
count_frequency_of_digit(num)