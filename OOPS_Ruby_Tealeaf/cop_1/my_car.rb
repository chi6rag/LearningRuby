class MyCar
	attr_accessor :color, :speed
	attr_reader :year, :model

	def initialize(model, year, color)
		@model = model
		@year = year
		self.color = color
		self.speed = 0
	end

	def accelerate
		self.speed += 20
	end

	def brake
		self.speed -= 20
	end

	def stop
		self.speed = 0
	end

	def spray_paint(color)
		self.color = color
	end

end


lamborghini = MyCar.new("Lamborhini Aventador", 2015, "Orange")
puts "Speed: " + lamborghini.speed.to_s
puts "Accelerating"
lamborghini.accelerate
puts "Speed: " + lamborghini.speed.to_s
puts "Braking"
lamborghini.brake
puts "Speed: " + lamborghini.speed.to_s
puts "Stopping"
lamborghini.stop
puts "Speed: " + lamborghini.speed.to_s
puts "Color: " + lamborghini.color
puts "Spray painting to Yellow"
lamborghini.spray_paint("Yellow")
puts "Color: " + lamborghini.color