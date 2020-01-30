# Your code here for calculating the standard deviation
require "pry"


# When you find the standard deviation, print it out
def sqrt(x)
  # binding.pry
  average        = lambda { |a,b| (a + b)/2.0 }
  is_good_enough = lambda { |a| (square(a) - x).abs < 0.001 }
  improve        = lambda { |a| average[a, x/a] }
  sqrt_iter      = lambda { |a| is_good_enough[a] ? a : sqrt_iter[improve[a]] }

  sqrt_iter[1.0]
end

def square(x)
  x * x
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
  modified_sum += square(age - mean)
end
# binding.pry

standard_deviation = sqrt(modified_sum / num_integers)
# binding.pry

p standard_deviation
