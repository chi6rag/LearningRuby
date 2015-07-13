module Mammal

	class Dog
		def speak
			"Arf!"
		end
	end

	class Cat
		def speak
			"Meow!"
		end
	end

  def self.some_out_of_place_method(number)
  	number * Random.new.rand * 10
  end

end

scooby = Mammal::Dog.new
puts scooby.speak

spooky = Mammal::Cat.new
puts spooky.speak

puts Mammal::some_out_of_place_method(1)