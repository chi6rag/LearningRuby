class GoodDog
	attr_accessor :name, :age, :weight
	DOG_YEARS = 7
	@@number_of_good_dogs = 0

	def initialize(n, a, w)
		@name = n
		@age = a * DOG_YEARS
		@weight = w
		@@number_of_good_dogs += 1
	end

	def change_info(n, a, w)
		self.name = n
		self.age = a
		self.weight = w
	end

	def self.total_number_of_good_dogs
		@@number_of_good_dogs
	end

	def to_s
		"This dog's name is #{self.name} and age is #{self.age} and weighs #{self.weight} kgs"
	end

	def self.what_am_i
		"I'm a GoodDog Class"
	end

	def what_is_self
		self
	end
 end

# puts GoodDog.total_number_of_good_dogs
# GoodDog.new
# GoodDog.new
# puts GoodDog.total_number_of_good_dogs

sparky = GoodDog.new('Sparky', 2, 10)
puts sparky
# puts sparky.age
# puts "String Interpolating sparky: #{sparky}"
# sparky.change_info('Sparkle', 3, 20)
# puts sparky
# puts sparky.what_is_self 