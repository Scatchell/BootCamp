$LOAD_PATH << File.dirname(__FILE__)

require 'chance'
require 'test/unit'

class ChanceTest < Test::Unit::TestCase
	def test_calculate_chance
		assert_equal "17%", Chance.new(6).get_chance
	end

	def test_calculate_not_chance
		assert_equal "83%", Chance.new(6).get_chance_not_happen
	end
end
