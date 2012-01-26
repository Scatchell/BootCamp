$LOAD_PATH << File.dirname(__FILE__)

require 'quantity'
require 'length'
require 'volume'
require 'test/unit'

class LengthTest < Test::Unit::TestCase
	def test_quantity_equality_ft_in
		assert_equal Quantity.new(3, Length.ft), Quantity.new(36,Length.in)
    assert_equal Quantity.new(3, Length.ft), Quantity.new(3,Length.ft)
    assert_equal Quantity.new(6, Length.in), Quantity.new(0.5,Length.ft)
  end

  def test_quantity_equality_tsp_tbsp
		assert_equal Quantity.new(9, Volume.tsp), Quantity.new(3, Volume.tbsp)
    assert_equal Quantity.new(1, Volume.tbsp), Quantity.new(3, Volume.tsp)
  end
end
