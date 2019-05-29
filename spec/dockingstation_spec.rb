require 'dockingstation'

describe 'DockingStation' do
  it 'release bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end
