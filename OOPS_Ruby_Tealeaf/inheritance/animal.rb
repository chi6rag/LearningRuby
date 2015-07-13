module Climbable

	def climb
		"I am climbing!"
	end

end

module Walkable

	def walk
		"I am walking!"
	end

end

module Swimmable
	
	def swim
		"I am swimming!"
	end

	def can_swim?
		true
	end

end

class Animal
	include Walkable

	def speak
		"Hello!"
	end

end

class GoodDog < Animal
	include Swimmable
	include Climbable
end

class Fish < Animal
	include Swimmable
end

class Mammal < Animal

	def warm_blodded?
		true
	end

end

class Dog < Mammal
	include Swimmable

	def speak
		"Arf!"
	end

end

class Cat < Mammal

	def speak
		"Meow!"
	end

end

# puts "------ GoodDog method lookup ------"
# puts GoodDog.ancestors
# ---- Result - Don't uncomment 8 lines below ----
# GoodDog
# Climbable
# Swimmable
# Animal
# Walkable
# Object
# Kernel
# BasicObject


# puts "------ Animal method lookup ------"
# puts Animal.ancestors
# ---- Result - Don't uncomment 5 lines below ----
# Animal
# Walkable
# Object
# Kernel
# BasicObject

# puts "------ Dog method lookup ------"
puts Dog.ancestors
# ---- Result - Don't uncomment 8 lines below ----
# Dog
# Swimmable
# Mammal
# Animal
# Walkable
# Object
# Kernel
# BasicObject

# bubbles = Fish.new
# puts bubbles.can_swim?

# scooby = Dog.new
# puts scooby.speak
# puts scooby.can_swim?
# puts scooby.warm_blodded?

# peepy = Cat.new
# puts peepy.speak