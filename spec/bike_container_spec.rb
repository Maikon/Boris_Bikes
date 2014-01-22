require_relative '../lib/bike_container'

# defining class Container
class ContainerHolder
  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end
end

describe BikeContainer do
  let(:bike) { Bike.new }
  let(:holder) { ContainerHolder.new(capacity: 20) }

  it 'should be able to accept a bike' do
    expect(holder.bike_count).to eq(0)
    holder.dock(bike)
    expect(holder.bike_count).to eq(1)
  end

  it 'should be able to release a bike' do
    holder.dock(bike)
    expect(holder.bike_count).to eq(1)
    holder.release(bike)
    expect(holder.bike_count).to eq(0)
  end
end
