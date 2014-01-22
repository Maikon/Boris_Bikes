require_relative '../lib/van'

describe Van do
  let(:bike) { Bike.new }
  let(:van) { Van.new(capacity: 10) }
  let(:station) { DockingStation.new }
  let(:garage) { Garage.new }

  it 'should accept only broken bikes' do
    bike
    broken_bike = Bike.new
    broken_bike.break
    station.dock(bike)
    station.dock(broken_bike)
    van.collect_broken_bikes_from(station)
    expect(van.bike_count).to eq(1)
    expect(station.bike_count).to eq(1)
  end

  
end