require 'length'
require 'volume'
require 'temperature'

class Quantity
  attr_reader :amount, :unit

  def initialize(amount, unit)
    @amount = amount
    @unit = unit
  end

	def ==(other)
    raise RuntimeError, "Type different, can't compute #{@unit.class}, #{other.unit.class}" unless (@unit.class == other.unit.class)
		if other.class == Quantity || other.class == ArithmeticQuantity
			return @unit.calc_amount_of_base_units(@amount) == other.unit.calc_amount_of_base_units(other.amount)
		else
			return false
		end
  end

end
