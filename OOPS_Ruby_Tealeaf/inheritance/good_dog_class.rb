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

class Mammal < Animal
end

class GoodDog < Mammal
	attr_reader :color
	include Swimmable
	include Climbable
	
	def initialize(name, color)
		super(name)
		@color = color
	end

	def speak
		# "#{self.name} says arf!"
		super + " from #{self.class} class"
	end

	def warm_blodded?
		true
	end

end

class Cat < Mammal
end

class BadDog < Mammal
	attr_accessor :age
	def initialize(name, age)
		super(name)
		@age = age
	end
end

class NiceWhale < Mammal
	include Swimmable
end

# nw = NiceWhale.new('Wahael Fish')
# puts nw.swim
# s = BadDog.new('Scooby', 2)
# puts s.name
# puts s.age
sparky = GoodDog.new('Sparky', 'brown')
puts sparky.walk
puts sparky.swim
puts "--- GoodDog method lookup ---"
puts GoodDog.ancestors
# puts sparky.speak
# puts sparky.name
# puts sparky.color
# kitty = Cat.new('Kitty')
# puts kitty.speak