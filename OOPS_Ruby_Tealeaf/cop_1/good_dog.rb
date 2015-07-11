class GoodDog
	def initialize(name)
		@name = name
	end

	def name
		@name
	end

end

good_dog = GoodDog.new("Scooby")
print good_dog.methods
# puts good_dog.name