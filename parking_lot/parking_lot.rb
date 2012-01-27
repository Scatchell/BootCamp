require 'vehicle'
class Lot
  attr_reader :filled_spaces

  def initialize(total_spaces)
    @lot = Hash.new
    @total_spaces = total_spaces
    @filled_spaces= 0
  end

  def park(vehicle)
    if can_add
      @lot[vehicle.id] = vehicle
      @filled_spaces=@lot.size
    else
      raise RuntimeError, "Parking lot full, cannot add new vehicle"
    end
  end

  def remove(vehicle)
    @lot.delete(vehicle.id)
    @filled_spaces=@lot.size
  end

  def can_add
    if @filled_spaces + 1 < @total_spaces
      true
    else
      false
    end
  end
end