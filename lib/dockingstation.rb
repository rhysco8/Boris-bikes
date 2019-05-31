

class DockingStation
  attr_reader :bike

  def release_bike
    raise "No bike!" if bike.nil?
    return @bike
  end
  def dock(bike)
    @bike = bike
  end

end
