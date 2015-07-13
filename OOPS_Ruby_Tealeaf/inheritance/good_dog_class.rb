class Animal
	attr_accessor :name

	def initialize(name)
		self.name = name
	end

	def speak
		"Hello!"
	end
	
end

class GoodDog < Animal
	attr_accessor :color

	def initialize(color)
		super
		self.color = color
	end

	def speak
		"#{name} says Arf!"
	end

end

class GoodCat < Animal
	def initialize
	end

end


class BadDog < Animal
	attr_accessor :color

	def initialize(name, color)
		super(name)
		self.color = color
	end

end

spooky = GoodDog.new("Brown")
puts spooky.speak
puts "Spooky's Color: " + spooky.color
puts "Spooky's Name: " + spooky.color

tiney = GoodCat.new
puts tiney.speak