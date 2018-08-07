class BusStop
  attr_reader :stop_name, :queue

  def initialize(stop_name, queue = [])
    @stop_name = stop_name
    @queue = queue
  end

  def add_person_to_queue(person)
    @queue.push(person)
  end

  

end
