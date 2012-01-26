class Quantity
  attr_reader :amount, :unit

  def initialize(amount, unit)
    @amount = amount
    @unit = unit
  end

  def convert_to_base()
    return Quantity.new((@amount * @unit.base_conversion_factor), @unit)
  end

	def ==(other)
   raise "Type different, can't compute" unless (unit.class == other.unit.class)
		if(other.class == Quantity)
			return convert_to_base.amount == other.convert_to_base.amount
		else
			return false
		end
  end
end
