class Length
  attr_reader :base_conversion_factor

  def initialize (base_unit)
    @base_conversion_factor = base_unit
  end

  def get_base_unit_object
    Length.inch
  end

  def self.inch
    Length.new(1)
  end

  def self.ft
    Length.new(Length.inch.base_conversion_factor * 12)
  end

  def self.yd
    Length.new(Length.ft.base_conversion_factor * 3)
  end

  def self.mi
    Length.new(Length.yd.base_conversion_factor * 1760)
  end
end