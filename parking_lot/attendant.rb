require 'parking_lot'

class Attendant
  def initialize (lot)
    @lot = lot;
  end

  def park(vehicle)
    @lot.park(vehicle)
  end

  def get(vehicle)
    @lot.remove(vehicle)
  end
end