class KrispyKreme
  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
  end

  def to_s
  	donut_name = ""
  	@filling_type != nil ? donut_name << @filling_type : donut_name << "Plain"
  	@glazing != nil ? donut_name << " with " << @glazing : donut_name << ""
  	donut_name
  end
end

donut1 = KrispyKreme.new(nil, nil)
donut2 = KrispyKreme.new('Vanilla', nil)
donut3 = KrispyKreme.new(nil, "sugar")
donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
donut5 = KrispyKreme.new("Custard", "icing")

puts donut1
puts donut2
puts donut3
puts donut4
puts donut5