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
end
