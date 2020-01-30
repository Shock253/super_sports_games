# Your code here for calculating the standard deviation
require "pry"


# When you find the standard deviation, print it out
def sqrt(x)
  # binding.pry
  average        = lambda { |first, second| (first + second)/2.0 }
  is_good_enough = lambda { |current_sqrt| (square(current_sqrt) - x).abs < 0.001 }
  improve        = lambda { |current_sqrt| average[current_sqrt, x/current_sqrt] }
  sqrt_iter      = lambda { |current_sqrt| is_good_enough[current_sqrt] ? current_sqrt : sqrt_iter[improve[current_sqrt]] }

  sqrt_iter[1.0]
end

def square(value)
  value * value
end

# Input -
ages = [24, 30, 18, 20, 41]
# binding.pry

ages.each_with_index do |age, index|
  ages[index] = age.to_f
end

# Sum all the integers -
sum = 0.0
ages.each do |age|
  sum += age
end
# binding.pry

# Find the number of integers in input array -
num_integers = ages.length
# binding.pry

# divide the sum of the integers (step 1) by the number of integers (step 2). This is the average (also known as the mean).
mean = sum/num_integers
# binding.pry

# subtract each integer by the average found in step 3
modified_sum = 0.0
ages.each do |age|
  modified_sum += (age - mean) ** 2
end
# binding.pry

standard_deviation = sqrt(modified_sum / num_integers)
# binding.pry

p standard_deviation
