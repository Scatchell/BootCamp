class ChanceNot
	def initialize(chance)
		@chance = chance
		@amount_selected = 1
	end

	def get_chance
		(100*(@chance)).to_i
	end

	def ==(other)
		if(other.class == ChanceNot)
			return get_chance == other.get_chance
		else
			return false
		end
	end

	def !=(other)
		if(other.class == ChanceNot)
			return get_chance != other.get_chance
		else
			return false
		end
	end

	def not_chance
		ChanceNot.new((1.to_f-@chance.to_f))
	end
end
