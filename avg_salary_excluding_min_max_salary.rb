# Question3 1491. Average Salary Excluding the Minimum and Maximum Salary
require "byebug"
def average(salary)
    byebug
    min_salary = salary.min
    max_salary = salary.max
    filtered_salary = salary.reject { |s| s == min_salary || s == max_salary }
    average_salary = filtered_salary.sum / filtered_salary.size.to_f
    return average_salary
end

salary = [4000,3000,1000,2000]
puts average(salary)