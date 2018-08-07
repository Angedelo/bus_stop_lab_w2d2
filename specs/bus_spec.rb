require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop')

class BusTest < MiniTest::Test

  def setup
    passengers = ["Alvaro", "Matthew"]
    @stop1 = BusStop.new("ocean terminal", ["Bond", "Bonnie"])
    @bus1 = Bus.new(22, "ocean terminal")
    @bus2 = Bus.new(22, "ocean terminal", passengers)
  end

  def test_drive
    assert_equal("vroom vroom", @bus1.drive)
  end

  def test_passengers_no_passengers
    assert_equal([], @bus1.passengers)
  end

  def test_passengers
    expected = ["Alvaro", "Matthew"]
    assert_equal(expected, @bus2.passengers)
  end

  def test_count_passengers

    assert_equal(2, @bus2.count_passengers)

  end

  def test_pick_up_passenger
    expected = ["Matthew"]
    @bus1.pick_up("Matthew")
    assert_equal(expected, @bus1.passengers)
  end

  def test_drop_off
    expected = ["Matthew"]
    @bus2.drop_off("Alvaro")
    assert_equal(expected, @bus2.passengers)
  end

  def test_empty_passengers
    @bus2.empty
    assert_equal([], @bus2.passengers)
  end

  def test_pick_up_from_stop()
    @bus2.pick_up_from_stop(@stop1)
    expected = ["Alvaro", "Matthew", "Bond", "Bonnie"]

    assert_equal(expected, @bus2.passengers)
  end




end
