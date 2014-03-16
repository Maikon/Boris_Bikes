require_relative '../lib/garage'
require_relative '../lib/van'

describe Garage do
  let(:bike) { Bike.new }
  let(:garage) { Garage.new }
  let(:van) { Van.new }

  it 'should fix broken bikes' do
    bike.break
    garage.dock(bike)
    garage.release(bike)
    expect(bike).not_to be_broken
  end
end
