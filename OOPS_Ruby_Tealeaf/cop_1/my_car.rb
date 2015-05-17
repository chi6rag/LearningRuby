class MyCar
	attr_accessor :year, :color, :model, :speed
  
  def initialize(year, color, model, speed=0)
  	@year = year
  	@color = color
  	@model = model
  	@speed = speed
  end

  def accelerate
  	self.speed+=20
  end

  def brake
  	self.speed-=20
  end

  def shut_down
  	self.speed = 0
  end
end

c = MyCar.new(1994, 'red', 'abcman', 321)
puts c.accelerate
puts c.accelerate
puts c.accelerate
puts c.brake
puts c.brake
puts c.brake
puts c.shut_down
puts c.accelerate
