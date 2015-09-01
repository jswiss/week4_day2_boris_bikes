class Garage

 def initialize
    @broken = true
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def accept bike
    @bikes << bike
  end

  def fix bike
    @broken = false
  end

  def remove bike
    @bikes.delete bike
  end

end