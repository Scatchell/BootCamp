class Chance
	def initialize(pos)
		@pos = pos
		@amount_selected = 1
	end

	def get_chance
		((@amount_selected.to_f/@pos.to_f).round(2) * 100).round.to_s + "%"
	end

	def get_chance_not_happen
		(100 - ((@amount_selected.to_f/@pos.to_f).round(2) * 100).round).to_s + "%"
	end

	def get_chance_frac
		@amount_selected.to_s + "/" + @pos.to_s
	end


end
