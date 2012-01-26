$LOAD_PATH << File.dirname(__FILE__)

require 'quantity'
require 'test/unit'

class QuantityTest < Test::Unit::TestCase
	def test_quantity_equality_ft_in
		assert_equal Quantity.new(3, "ft"), Quantity.new(36,"in")
    assert_equal Quantity.new(3, "ft"), Quantity.new(3,"ft")
    assert_equal Quantity.new(6, "in"), Quantity.new(0.5,"ft")
  end

  def test_quantity_equality_yd
		assert_equal Quantity.new(3, "yd"), Quantity.new(9,"ft")
    assert_equal Quantity.new(3, "yd"), Quantity.new(108,"in")
    assert_equal Quantity.new(108, "in"), Quantity.new(3,"yd")
  end

  def test_quantity_equality_mi
		assert_equal Quantity.new(3, "mi"), Quantity.new(5280,"yd")
    assert_equal Quantity.new(1, "mi"), Quantity.new(63360,"in")
    assert_equal Quantity.new(63360, "in"), Quantity.new(1,"mi")
  end

  def test_tbsp_tsp_equality
    assert_equal Quantity.new(3, "tsp"), Quantity.new(1, "tbsp")
    assert_equal Quantity.new(3, "tbsp"), Quantity.new(9, "tsp")
  end

  def test_tbsp_oz_equality
    assert_equal Quantity.new(9, "oz"), Quantity.new(18, "tbsp")
    assert_equal Quantity.new(2, "oz"), Quantity.new(4, "tbsp")
  end

  def test_different_types_throw_runtime_error
    assert_raise RuntimeError do
      assert_equal Quantity.new(9, "oz"), Quantity.new(18, "mi")
    end
  end
end
