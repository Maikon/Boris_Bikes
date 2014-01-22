require_relative '../lib/van'

describe Van do
  let(:bike) { Bike.new }
  let(:broken_bike) { Bike.new.break }
  let(:van) { Van.new(capacity: 10) }
  let(:station) { DockingStation.new }
  let(:garage) { Garage.new }

  it 'should pick up broken bikes from docking station' do
    station.dock(bike)
    expect(station.bike_count).to eq(1)
    van.dock(station.release(bike))
    expect(station.bike_count).to eq(0)
  end

  it 'should accept only broken bikes' do
    station.dock(bike)
    station.dock(broken_bike)
    van.dock(station.release(["station.bike_count"]))
    expect(van.bike_count).to eq(1)
    expect(station.bike_count).to eq(1)
    
  end
end