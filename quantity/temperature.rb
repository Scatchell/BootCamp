class Temperature
  attr_reader :is_f

  def initialize(boolean)
    @is_f = boolean
  end

  def get_base_unit_object
    Temperature.f
  end

  def self.f
    Temperature.new(true)
  end

  def self.c
    Temperature.new(false)
  end

  def calc_amount_of_base_units(amount)
    if @is_f == false
      ((amount*(9/5.0)) + 32).to_i
    else
      amount
    end
  end

end