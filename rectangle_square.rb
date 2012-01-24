class Rectangle
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

class Square < Rectangle
	def initialize(sides)
		super(sides, sides)
	end

	def set_sides(sides)
		@height = sides
		@width = sides
	end
end
