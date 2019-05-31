require 'dockingstation'
require 'bike'

describe 'DockingStation' do
  describe '#release_bike' do
    it 'releases bike' do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.release_bike).to be_instance_of(Bike)
    end
  end
  it 'tests if bike works' do
    docking_station= DockingStation.new
    bike=Bike.new
    docking_station.dock(bike)
    a_bike = docking_station.release_bike
    expect(bike.working?).to be true
  end
  describe '#dock(bike)' do
    it "docks a bike" do
      docking_station = DockingStation.new
      bike = Bike.new
      docked_bike = docking_station.dock(bike)
      expect(docked_bike).to eq(bike)
    end
    it 'lets you dock a bike' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock).with(1).argument
    end
  end
  it 'lets you see a bike in docking station' do
    docking_station = DockingStation.new
    docked_bike = Bike.new
    docking_station.dock(docked_bike)
    expect(docking_station.bike).to eq(docked_bike)
  end
  it "raises an error when there's no bikes avaliable" do
    docking_station = DockingStation.new
    expect{docking_station.release_bike}.to raise_error("No bike!")
  end
  it "raises an error when it's full/try to dock a bike" do
    docking_station= DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect{docking_station.dock(Bike.new)}.to raise_error("Docking station is full!")
  end
end
