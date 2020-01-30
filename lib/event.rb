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
    sum = 0.0
    @ages.each do |age|
      sum += age.to_f
    end

    mean = sum / @ages.length

    modified_sum = 0.0
    @ages.each do |age|
      modified_sum += (age - mean) ** 2
    end

    Math.sqrt(modified_sum / num_integers).round(2)
  end
end
