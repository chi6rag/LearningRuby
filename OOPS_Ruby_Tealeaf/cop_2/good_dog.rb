# class GoodDog
# 	attr_accessor :name
# 	attr_reader :age
# 	@@number_of_dogs = 0
# 	NUMBER_OF_LEGS = 4
# 	DOG_YEARS = 7

# 	def initialize(name, age)
# 		@@number_of_dogs += 1
# 		@age = age * DOG_YEARS
# 		self.name = name
# 	end

# 	def self.total_dog_instances
# 		@@number_of_dogs
# 	end

# 	def self.what_am_i
# 		self.to_s
# 	end

# 	def number_of_legs
# 		NUMBER_OF_LEGS
# 	end

# 	def age
# 		@age
# 	end

# 	def to_s
# 		"This GoodDog's name is #{name} and is #{age} years old in dog years"
# 	end

# end

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
  	self
  end
end

# 10.times do; GoodDog.new; end
# puts GoodDog.total_dog_instances
# puts GoodDog.what_am_i
# puts GoodDog.new("Spooky", 7)
puts GoodDog.new("Spooky", 12, 24).what_is_self