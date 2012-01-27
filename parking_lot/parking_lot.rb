require 'vehicle'
class Lot

  def initialize(total_spaces = 1)
    @lot = Hash.new
    @total_spaces = total_spaces
  end

  def park(vehicle)
    if can_park
      @lot[vehicle] = vehicle
       return vehicle
    else
      raise RuntimeError, "Parking lot full, cannot add new vehicle"
    end
  end

  def remove(vehicle)
    if @lot.delete(vehicle) == nil
      raise RuntimeError, "Car not found, cannot be removed"
    else
      return vehicle
    end
  end

  private
  def can_park
    @lot.size + 1 < @total_spaces
  end


end