$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'parking_lot'


class ParkingLotTest < Test::Unit::TestCase
	def test_add_car
    lot = Lot.new(100)
    lot.park(Vehicle.new(1))
		assert_equal 1, lot.filled_spaces
  end

  def test_remove_parked_car
    lot = Lot.new(100)

    vehicle = Vehicle.new(1)
    vehicle2 = Vehicle.new(3)

    lot.park(vehicle)
    lot.park(Vehicle.new(2))

    lot.remove(vehicle2)

    assert_equal 1, lot.filled_spaces
  end
end

