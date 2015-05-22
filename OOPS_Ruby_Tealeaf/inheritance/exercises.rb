class Vehicle
	@@number_of_objects = 0

	def self.created_objects
		@@number_of_objects
	end

	protected
	def initialize
		@@number_of_objects += 1
	end


	def self.calculate_mileage(gallons, miles)
    "The mileage of the car is #{(gallons.to_f/miles.to_f)} gallons per mile"
  end
end

module Towable
	def can_tow?(weight)
		weight > 2000 ? false : true
	end
end

class FourWheelers
	class MyCar < Vehicle
		attr_accessor :color, :speed
	  attr_reader :year, :model
	  include Towable
	  NUMBER_OF_DOORS = 4
	  
	  def initialize(year, color, model, speed=0)
	  	super()
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

	  def to_s
	    "This is a #{self.model} car which is manufactured in #{self.year}, has #{self.color} color and travels at #{self.speed} mph"
	  end
	end

	class MyTruck < Vehicle
		include Towable
		NUMBER_OF_DOORS = 2
	end
end

my_car = FourWheelers::MyCar.new(1994, 'white', 'A101', 365)
puts my_car.can_tow?(3000)
# puts "-------- Vehicle Ancestors --------"
# puts Vehicle.ancestors
# puts "-------- MyCar Ancestors --------"
# puts FourWheelers::MyCar.ancestors
# puts "-------- MyTruck Ancestors --------"
# puts FourWheelers::MyTruck.ancestors
# puts FourWheelers::NUMBER_OF_WHEELS
# 1.times do
# 	FourWheelers::MyCar.new(1994, 'red', 'MS121', 345)
# end
# puts Vehicle.created_objects