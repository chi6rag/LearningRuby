class GoodDog
	def initialize(name)
		@name = name
	end

	def speak
		"#{@name} says Arf!"
	end

	def name
		@name
	end

	def name=(name)
		@name = name
	end

end

sparky = GoodDog.new("Sparky")
puts sparky.speak
# puts sparky.name
puts sparky.name
sparky.name = "Sparkyyyie"
puts sparky.name

fido = GoodDog.new("Fido")
puts fido.speak