require_relative '../lib/bike_container'

# describing class container
class ContainerHolder
  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end
end

describe BikeContainer do

end
