

class DockingStation
  attr_reader :bike
  @bike = nil
  def release_bike
    raise "No bike!" if @bike.nil?
    return @bike
  end
  def dock(bike)
    raise "Docking station is full!" if @bike != nil

    @bike = bike
  end

end
