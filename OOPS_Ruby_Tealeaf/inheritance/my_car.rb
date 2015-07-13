class Vehicle
	attr_accessor :color, :speed
	attr_reader :year, :age, :manufactured_at
	@@number_of_vehicles = 0

	def initialize(color, year)
		@year = year
		self.color = color
		self.speed = 0
		@@number_of_vehicles += 1
		@manufactured_at = Time.now
	end

	def self.mileage(miles, gallons)
		miles/gallons
	end

	def self.number_of_vehicles
		@@number_of_vehicles
	end

	def accelerate(up_speed)
		self.speed += up_speed
	end

	def brake(down_speed)
		self.speed -= down_speed
	end

	def stop
		self.speed = 0
	end

	def spray_paint(color)
		self.color = color
	end

	def age
		calculate_age
	end

	protected
	def calculate_age
		"#{( (Time.now - manufactured_at) / 60).round(2)} minutes"

	end

end

module Towable
	def can_tow?
		true
	end
end

class MyCar < Vehicle
	attr_reader :model
	NUMBER_OF_DOORS = 4

	def initialize(model, year, color)
		super(color, year)
		@model = model
	end

end

class Truck < Vehicle
	include Towable
	attr_reader :model
	NUMBER_OF_DOORS = 2

	def initialize(model, year, color)
		super(color, year)
		@model = model
	end

end

# 10.times do |index|
# 	my_car = MyCar.new(index.to_s + "_ABC", 2015, ['Red', 'Blue', 'Green'].sample)
# end

# puts Vehicle.number_of_vehicles
# puts Vehicle.ancestors
# puts MyCar.ancestors
# puts Truck.ancestors

my_car = MyCar.new("1000_ABC", 2015, ['Red', 'Blue', 'Green'].sample)
sleep(5)
puts my_car.age