module Walkable
	def walk
		"I am walking"
	end
end

class Animal
	attr_accessor :name
	include Walkable

	def initialize(name)
		@name = name
	end

	def speak
		"hello!"
	end

	protected
	def run
		"Running"
	end
end


module Climbable
	def climb
		"I am climbing"
	end
end

module Swimmable
	def swim
		"I am swimming"
	end
end

class Fish < Animal
	include Swimmable
end

module Mammal

	class GoodDog < Animal
		DOG_YEARS = 7
		attr_reader :color, :age
		include Swimmable
		include Climbable
		
		def initialize(name, color, age)
			super(name)
			@color = color
			@age = age * DOG_YEARS
		end

		def speak
			# "#{self.name} says arf!"
			super + " from #{self.class} class"
		end

		def warm_blodded?
			true
		end

		def public_disclosure
			"#{self.name} in human years is #{human_age}"
		end

		def come_on_run
			self.name + " is " + run
		end

		private
		def human_age
			self.age / DOG_YEARS
		end
	end

	class Cat < Animal
	end

	class BadDog < Animal
		attr_accessor :age
		def initialize(name, age)
			super(name)
			@age = age
		end
	end

	class NiceWhale < Animal
		include Swimmable
	end

	def self.some_out_of_place_method
		"This is a method inside the module Mammal"
	end

end

# puts Mammal::some_out_of_place_method 
m = Mammal::GoodDog.new('Sparky', 'brown', 2)
puts m.public_disclosure
puts m.come_on_run
# nw = NiceWhale.new('Wahael Fish')
# puts nw.swim
# s = BadDog.new('Scooby', 2)
# puts s.name
# puts s.age
# sparky = Mammal::GoodDog.new('Sparky', 'brown')
# puts "Sparky: " + sparky.walk
# puts "Sparky: " + sparky.swim
# puts "--- GoodDog method lookup ---"
# puts Mammal::GoodDog.ancestors
# puts sparky.speak
# puts sparky.name
# puts sparky.color
# kitty = Cat.new('Kitty')
# kitty = Mammal::Cat.new('Kitty')
# puts "Kitty: " + kitty.walk
# puts "Kitty: " + kitty.name
# puts kitty.speak