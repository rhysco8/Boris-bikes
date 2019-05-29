require 'dockingstation'
require 'bike'

describe 'DockingStation' do
  it 'release bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it 'gets bike' do
    expect(DockingStation.new.release_bike).to be_instance_of(Bike)
  end
end
