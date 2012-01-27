$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'attendant'
require 'mocha'

class AttendantTest < Test::Unit::TestCase

  # def test_mocking_a_class_method
  #   product = Product.new
  #   Product.expects(:find).with(1).returns(product)
  #   assert_equal product, Product.find(1)
  # end

  def test_attendant_parks_vehicle
    lot = Lot.new
    vehicle = Vehicle.new
    attendant = Attendant.new(lot)
    lot.expects(:park).with(vehicle).returns(vehicle)
    assert_equal vehicle, attendant.park(vehicle)
  end

  def test_attendant_gets_vehicle
    lot = Lot.new
    attendant = Attendant.new(lot)
    vehicle = Vehicle.new;

    lot.expects(:remove).with(vehicle).returns(vehicle)

    assert_equal vehicle, attendant.get(vehicle)
  end

  def test_if_attendant_can_park
    lot = Lot.new(10)
    vehicle2 = Vehicle.new

    attendant = Attendant.new(lot)

    attendant.park(Vehicle.new)
    attendant.park(Vehicle.new)
    attendant.park(Vehicle.new)
    attendant.park(Vehicle.new)
    attendant.park(Vehicle.new)
    attendant.park(Vehicle.new)
    attendant.park(Vehicle.new)
    attendant.park(Vehicle.new)


    assert_raise RuntimeError do
      assert_equal vehicle2, attendant.park(vehicle2)
    end


  end
end