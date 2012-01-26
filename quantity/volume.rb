class Volume
   attr_reader :base_conversion_factor

  def initialize (base_unit)
    @base_conversion_factor = base_unit
  end

  def get_base_unit_object
    Volume.tsp
  end

  def self.tsp
    Volume.new(1)
  end

  def self.tbsp
    Volume.new(Volume.tsp.base_conversion_factor * 3)
  end

  def self.oz
    Volume.new(Volume.tbsp.base_conversion_factor * 2)
  end

  def self.cup
    Volume.new(Volume.oz.base_conversion_factor * 8)
  end
end