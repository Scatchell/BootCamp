class ChanceNot
	def initialize(chance)
		@chance = chance
		@amount_selected = 1
    @gu
	end

	def get_chance
		(100*(@chance)).to_i
  end

  def get_chance_dec
		@chance
	end

	def ==(other)
		if(other.class == ChanceNot)
			return get_chance == other.get_chance
		else
			return false
		end
  end

  def &(other)
    ChanceNot.new(get_chance_dec*other.get_chance_dec)
  end

  def +(other)
    ChanceNot.new(get_chance_dec+other.get_chance_dec)
  end

  def -(other)
    ChanceNot.new(get_chance_dec-other.get_chance_dec)
  end

  def |(other)
    (self+other)-(self&other)
  end

	def not_chance
		ChanceNot.new((1.to_f-@chance.to_f))
  end

  def self.guaranteed
    @guaranteed
  end
end
