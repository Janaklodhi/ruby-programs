def factorial(num)
    fact = 1
    if num < 0
        return nil 
    elsif num == 0
        return 1
    else
        for i in 1..num
            fact *= i
        end
        return fact
    end
end

puts "Enter the number:"
num = gets.chomp.to_i
final_data = factorial(num)
if final_data
    puts "The factorial of the number is #{final_data}"
else
    puts "Factorial is not defined for negative numbers."
end