class Length
  def initialize (base_unit)
    @base_unit = base_unit
  end



  def in
    Length.new(1)
  end

  def ft
    Length.new(1)
  end
end