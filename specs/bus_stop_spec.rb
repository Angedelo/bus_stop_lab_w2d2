require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class BusStopTest < MiniTest::Test
  def setup

    @stop1 = BusStop.new("ocean terminal", [])

  end

  def test_name
    assert_equal("ocean terminal", @stop1.stop_name)
  end

  def test_add_person_to_queue
    person1 = Person.new("Matthew", 25)
    @stop1.add_person_to_queue(person1)
    assert_equal([person1], @stop1.queue)
  end

end
