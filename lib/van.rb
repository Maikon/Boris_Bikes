require_relative 'bike_container'
# defining Van class
class Van
  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end
end
