$LOAD_PATH << File.dirname(__FILE__)

require 'quantity'
require 'test/unit'

class LengthTest < Test::Unit::TestCase
	def test_quantity_equality_ft_in
		assert_equal Quantity.new(3, Length.ft), Quantity.new(36,Length.inch)
    assert_equal Quantity.new(3, Length.ft), Quantity.new(3,Length.ft)
    assert_equal Quantity.new(6, Length.inch), Quantity.new(0.5,Length.ft)
  end

  def test_quantity_equality_tsp_tbsp
		assert_equal Quantity.new(9, Volume.tsp), Quantity.new(3, Volume.tbsp)
    assert_equal Quantity.new(1, Volume.tbsp), Quantity.new(3, Volume.tsp)
  end

  def test_add_length
    assert_equal Quantity.new(5, Length.inch), Quantity.new(2, Length.inch) + Quantity.new(3, Length.inch)
    assert_equal Quantity.new(48, Length.inch), Quantity.new(1, Length.yd) + Quantity.new(1, Length.ft)
  end

  def test_add_multiple_types_throws_exception
    assert_raise RuntimeError do
      assert_equal Quantity.new(48, Length.inch), Quantity.new(1, Length.yd) + Quantity.new(1, Volume.tsp)
    end
  end

  def test_add_volume
    assert_equal Quantity.new(12, Volume.tsp), Quantity.new(6, Volume.tsp) + Quantity.new(2, Volume.tbsp)
  end


end
