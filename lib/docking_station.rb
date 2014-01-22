require_relative 'bike_container'

class DockingStation

  include BikeContainer

  def initialize(options = {}) # we keep the initializer here to be able to set a custom capacity if we want to
    self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end
end
