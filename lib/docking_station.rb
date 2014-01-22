require_relative 'bike_container'

# defining DockingStation class
class DockingStation
  include BikeContainer

  def initialize(options = {}) # initializer to be able to set custom capacity
    self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end
end
