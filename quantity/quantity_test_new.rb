$LOAD_PATH << File.dirname(__FILE__)

require 'arithmetic_quantity'
require 'quantity'
require 'test/unit'

class LengthTest < Test::Unit::TestCase
	def test_ArithmeticQuantity_equality_ft_in
		assert_equal ArithmeticQuantity.new(3, Length.ft), ArithmeticQuantity.new(36,Length.inch)
    assert_equal ArithmeticQuantity.new(3, Length.ft), ArithmeticQuantity.new(3,Length.ft)
    assert_equal ArithmeticQuantity.new(6, Length.inch), ArithmeticQuantity.new(0.5,Length.ft)
  end

  def test_ArithmeticQuantity_equality_tsp_tbsp
		assert_equal ArithmeticQuantity.new(9, Volume.tsp), ArithmeticQuantity.new(3, Volume.tbsp)
    assert_equal ArithmeticQuantity.new(1, Volume.tbsp), ArithmeticQuantity.new(3, Volume.tsp)
  end

  def test_add_length
    assert_equal ArithmeticQuantity.new(5, Length.inch), ArithmeticQuantity.new(2, Length.inch) + ArithmeticQuantity.new(3, Length.inch)
    assert_equal ArithmeticQuantity.new(48, Length.inch), ArithmeticQuantity.new(1, Length.yd) + ArithmeticQuantity.new(1, Length.ft)
  end

  def test_add_multiple_types_throws_exception
    assert_raise RuntimeError do
      assert_equal ArithmeticQuantity.new(48, Length.inch), ArithmeticQuantity.new(1, Length.yd) + ArithmeticQuantity.new(1, Volume.tsp)
    end
  end

  def test_add_volume
    assert_equal ArithmeticQuantity.new(12, Volume.tsp), ArithmeticQuantity.new(6, Volume.tsp) + ArithmeticQuantity.new(2, Volume.tbsp)
  end

  def test_ArithmeticQuantity_equality_temperatures
    assert_equal Quantity.new(212, Temperature.f), Quantity.new(100, Temperature.c)
    assert_equal Quantity.new(32, Temperature.f), Quantity.new(0, Temperature.c)
  end

  def test_temperatures_cannot_be_added
    assert_raise NoMethodError do
      assert_equal Quantity.new(2, Temperature.f), Quantity.new(1, Temperature.f) + Quantity.new(1, Temperature.f)
    end
  end

  def test_add_quantity_and_arithmetic_quantity_throws_exception
    assert_raise RuntimeError do
      assert_equal Quantity.new(2, Temperature.f), ArithmeticQuantity.new(1, Length.ft) + Quantity.new(1, Temperature.f)
    end
  end

end
