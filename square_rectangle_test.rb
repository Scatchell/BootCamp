$LOAD_PATH << File.dirname(__FILE__)

require 'rectangle_square'
require 'test/unit'

class SquareTest < Test::Unit::TestCase
	def test_area
		assert_equal 25,Square.new(5).area  
	end
	
	def test_perimeter
		assert_equal 20,Square.new(5).perimeter
	end
	
	
	def test_change_width_and_height
		square = Square.new(5)
		square.set_sides(10)

		assert_equal 40,square.perimeter
	end
end

class RectangleTest < Test::Unit::TestCase
	def test_area
		assert_equal 25,Rectangle.new(5,5).area  
	end
	
	def test_perimeter
		assert_equal 20,Rectangle.new(5,5).perimeter
	end
	
	
	def test_change_width_and_height
		rectangle = Rectangle.new(5,5)
		rectangle.set_height(10)
		rectangle.set_width(10)

		assert_equal 40,rectangle.perimeter
	end
end
