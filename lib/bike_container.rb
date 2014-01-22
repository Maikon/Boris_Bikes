# defining BikeContainer module
module BikeContainer
  DEFAULT_CAPACITY = 10

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise 'Station is Full!' if full?
    bikes << bike
  end

  def release(bike)
    bikes.delete(bike)
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject { |bike| bike.broken? }
  end

  # def release_broken_bikes
  #   bikes.delete_if { |bike| bike.broken? }
  # end

  def collect_broken_bikes_from(station)
    broken_bikes = station.bikes.select! { |bike| bike.broken? }
    broken_bikes.each { |bike| dock(bike) }
  end

end
