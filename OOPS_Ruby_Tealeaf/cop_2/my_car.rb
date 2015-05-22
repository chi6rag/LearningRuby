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

  def self.calculate_mileage(gallons, miles)
    "The mileage of the car is #{(gallons.to_f/miles.to_f)} gallons per mile"
  end

  def to_s
    "This is a #{self.model} car which is manufactured in #{self.year}, has #{self.color} color and travels at #{self.speed} mph"
  end
end

# puts MyCar.calculate_mileage(12, 24)
c = MyCar.new(1994, 'red', 'abcman', 321)
puts c
# puts c.accelerate
# puts c.accelerate
# puts c.accelerate
# puts c.brake
# puts c.brake
# puts c.brake
# puts c.shut_down
# puts c.accelerate
# c.color = 'blue'
# puts c.color
# puts c.year
# c.spray_paint('yellow')
# puts c.color
