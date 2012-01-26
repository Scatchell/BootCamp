require 'quantity'

class ArithmeticQuantity < Quantity

  def +(other)
    raise RuntimeError, "Type different, can't compute" unless (@unit.get_base_unit_object.class == other.unit.get_base_unit_object.class)
		if(other.class == ArithmeticQuantity)
      return ArithmeticQuantity.new(@unit.calc_amount_of_base_units(@amount) + other.unit.calc_amount_of_base_units(other.amount), other.unit.get_base_unit_object)
    else
      raise RuntimeError, "Must add two quantities"
    end
  end

end
