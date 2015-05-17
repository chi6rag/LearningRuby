class MyCar
	attr_accessor :color, :speed
  attr_reader :year, :model
  
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

  def spray_paint(color)
    @color = color
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
c.color = 'blue'
puts c.color
puts c.year
c.spray_paint('yellow')
puts c.color