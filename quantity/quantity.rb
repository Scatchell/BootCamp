class Quantity
	def initialize(amount, unit)

    if (unit == "in" || unit == "ft" || unit == "yd" || unit == "mi")
      @type = "length"
      @base = "in"
    elsif ( unit == "tsp" || unit == "tbsp" || unit == "oz" || unit == "cup")
      @type = "volume"
      @base = "tsp"
    end

    @amount = amount
    @unit = unit
  end

  def get_amount
    @amount
  end

  def get_unit
    @unit
  end

  def get_type
    @type
  end

  def convert_to_base()
    if (@unit != @base)

      #search and do conversions for known length units
		  if (@unit == "ft")
        return Quantity.new((@amount * 12), "in")
      elsif (@unit == "yd")
        return Quantity.new((@amount * 3), "ft").convert_to_base
      elsif(@unit == "mi")
        return Quantity.new((@amount * 1760), "yd").convert_to_base

      #search and do conversions for known volume units
      elsif(@unit == "tbsp")
        return Quantity.new((@amount * 3), "tsp")
      elsif (@unit == "oz")
        return Quantity.new((@amount * 2), "tbsp").convert_to_base
      elsif (@unit == "cup")
        return Quantity.new((@amount * 8), "oz").convert_to_base
      end
      #-----------------------------------------

    else
      return self
    end
  end

	def ==(other)
    raise "Type different, can't compute" unless (get_type == other.get_type)
		if(other.class == Quantity)
			return convert_to_base.get_amount == other.convert_to_base.get_amount
		else
			return false
		end
  end
end
