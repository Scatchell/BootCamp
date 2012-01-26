require 'unit'
require 'length'
require 'volume'

class Quantity
  attr_reader :amount, :unit

  def initialize(amount, unit)
    @amount = amount
    @unit = unit
  end

  def convert_to_base()
    return Quantity.new((@amount * @unit.base_conversion_factor), @unit.get_base_unit_object)
  end

	def ==(other)
    raise RuntimeError, "Type different, can't compute #{@unit.class}, #{other.unit.class}" unless (@unit.class == other.unit.class)
		if(other.class == Quantity)
			return convert_to_base.amount == other.convert_to_base.amount
		else
			return false
		end
  end

  def +(other)
    raise RuntimeError, "Type different, can't compute" unless (@unit.get_base_unit_object.class == other.unit.get_base_unit_object.class)
		if(other.class == Quantity)
      return Quantity.new(convert_to_base.amount + other.convert_to_base.amount, other.unit.get_base_unit_object)
    else
      raise RuntimeError, "Must add two quantities"
    end
  end
end
