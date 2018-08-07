class Bus

  attr_reader(:route, :destination, :passengers)

  def initialize(route, destination, passengers = [])
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "vroom vroom"
  end

  def count_passengers
    return @passengers.count
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty
    @passengers = []
  end

  def pick_up_from_stop(stop)

    @passengers += stop.queue

  end

end
