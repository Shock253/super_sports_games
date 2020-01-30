require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test
  def test_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_instance_of Event, event
  end
end

# pry(main)> event = Event.new("Curling", [24, 30, 18, 20, 41])
# #=> #<Event:0x00007fba3fc42ab0 @ages=[24, 30, 18, 20, 41], @name="Curling">
#
# pry(main)> event.name
# #=> "Curling"
#
# pry(main)> event.ages
# #=> [24, 30, 18, 20, 41]
#
# pry(main)> event.max_age
# #=> 41
#
# pry(main)> event.min_age
# #=> 18
#
# pry(main)> event.average_age
# #=> 26.6
#
# pry(main)> event.standard_deviation_age
# #=> 8.28
#
