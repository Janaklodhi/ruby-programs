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



# This is the prime number programs that i have created here#

def prime_numbers(num)
    prime_numbers = []
    
    if num <= 0 || num == 1
        return prime_numbers
    end
    
    for i in 2..num
      is_prime = true
      for j in 2..Math.sqrt(i).to_i
        if i % j == 0
          is_prime = false
          break
        end
      end
      prime_numbers.push(i) if is_prime
    end
  
    return prime_numbers
  end
  
  puts "Enter the number:"
  num = gets.chomp.to_i
  puts prime_numbers(num).inspect
  