$LOAD_PATH << File.dirname(__FILE__)

require 'chance_not'
require 'test/unit'

class ChanceTest < Test::Unit::TestCase
	def test_calculate_not_chance
		assert ChanceNot.new(0.5) == ChanceNot.new(0.5).not_chance
		assert ChanceNot.new(0.25) == ChanceNot.new(0.75).not_chance
		assert ChanceNot.new(0.75) == ChanceNot.new(0.25).not_chance
	end

	def test_calculate_chance
		assert_equal 50, ChanceNot.new(0.5).get_chance
		assert_equal 25, ChanceNot.new(0.25).get_chance
	end

	def test_compare_chances
		assert_equal ChanceNot.new(0.5), ChanceNot.new(0.5)
		assert_equal ChanceNot.new(0.25), ChanceNot.new(0.25)

		assert_not_equal ChanceNot.new(0.5), ChanceNot.new(0.4)
		assert_not_equal ChanceNot.new(0.1), ChanceNot.new(0.5)
	end

	def test_compare_different_types
		assert_not_equal ChanceNot.new(0.5), nil
		assert_not_equal ChanceNot.new(0.25), "0.25"
	end
end
