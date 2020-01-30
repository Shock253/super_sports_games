require 'mathn'

class Event
  attr_accessor :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    sum = 0.0
    @ages.each do |age|
      sum += age
    end
    sum / @ages.length
  end

  def standard_deviation_age


    def sqrt(x)
      # binding.pry
      average        = lambda { |a,b| (a + b)/2.0 }
      is_good_enough = lambda { |a| (square(a) - x).abs < 0.001 }
      improve        = lambda { |a| average[a, x/a] }
      sqrt_iter      = lambda { |a| is_good_enough[a] ? a : sqrt_iter[improve[a]] }

      sqrt_iter[1.0]
    end

    def square(value)
      value * value
    end

    @ages.each_with_index do |age, index|
      @ages[index] = age.to_f
    end

    # Sum all the integers -
    sum = 0.0
    @ages.each do |age|
      sum += age
    end

    num_integers = @ages.length

    mean = sum/num_integers

    modified_sum = 0.0
    @ages.each do |age|
      modified_sum += square(age - mean)
    end

    sqrt(modified_sum / num_integers).round(2)
  end
end
