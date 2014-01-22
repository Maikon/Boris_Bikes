require_relative '../lib/bike_container'
# defining artificial ContainerHolder class to test BikeContainer module
class ContainerHolder
  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end
end

describe BikeContainer do
  let(:bike) { Bike.new }
  let(:holder) { ContainerHolder.new(capacity: 20) }

  def fill_station(station)
    20.times { station.dock(bike) }
  end

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

  it 'should know when it\'s full' do
    fill_station(holder)
    expect(holder.full?).to be_true
  end

  it 'should not accept any bikes if it\'s full' do
    fill_station(holder)
    expect { holder.dock(bike) }.to raise_error(RuntimeError)
  end
end
