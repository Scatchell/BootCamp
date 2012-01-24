require 'test/unit'

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

class Rectangle
	height=0
	width=0
	def initialize(height, width)
		@height = height
		@width = width
	end

	def area
		@height * @width
	end
	
	def perimeter
		(@height * 2) + (@width * 2)
	end

	def set_height(height)
		@height = height
	end

	def set_width(width)
		@width = width
	end
end
