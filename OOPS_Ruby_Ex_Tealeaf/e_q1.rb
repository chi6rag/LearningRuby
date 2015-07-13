# 1 - 1,2,3,4

# 2 ----------
# module Speed
# 	def go_fast
# 		puts "I am a #{self.class} and I am going fast"
# 	end
# end

# class Car
# 	include Speed

# 	def go_slow
# 		puts "I am a #{self.class} and I am moving very slow"
# 	end

# end

# class Truck
# 	include Speed

# 	def go_very_slow
# 		puts "I am a #{self.class} and I am moving very very slow"
# 	end

# end

# mercedes_c300 = Car.new
# mercedes_c300.go_fast
# mercedes_c300.go_slow

# mercedes_truck = Truck.new
# mercedes_truck.go_fast
# mercedes_truck.go_slow
# ---------- 2

# 3 ----------
# module Speed
# 	def go_fast
# 		puts "I am a #{self.class} and I am going fast"
# 	end
# end

# class Car
# 	include Speed

# 	def go_slow
# 		puts "I am a #{self.class} and I am moving very slow"
# 	end

# end

# class Truck
# 	include Speed

# 	def go_very_slow
# 		puts "I am a #{self.class} and I am moving very very slow"
# 	end

# end

# mercedes_c300 = Car.new
# mercedes_c300.go_fast
# mercedes_c300.go_slow

# mercedes_truck = Truck.new
# mercedes_truck.go_fast
# mercedes_truck.go_slow
# ANSWER: Using self.class
# ---------- 3

# 4 ----------
# class AngryCat
#   def hiss
#     puts "Hisssss!!!"
#   end
# end
# peter = AngryCat.new
# peter.hiss
# ---------- 4

# 5 ----------
# class Fruit
#   def initialize(name)
#     name = name
#   end
# end

# class Pizza
#   def initialize(name)
#     @name = name
#   end
# end
# Fruit class does not have an instance level variable
# since neither @ is not prepended to name, nor self
# is prepended so that it might act as a setter method
# For Pizza class, @name is an instance variable
# ---------- 5

# 6 ----------
# class Cube
#  attr_reader :volume
#  def initialize(volume)
#    @volume = volume
#  end

#  def volume
#  	@volume
#  end
# end
# adding an attr_reader :volume or
# making a method def volume and returning @volume
# ---------- 6

# 7 ----------
# Object's class
# ---------- 7

# 8 ----------
# class Cat
#   attr_accessor :type, :age

#   def initialize(type)
#     @type = type
#     @age  = 0
#   end

#   def make_one_year_older
#     self.age += 1
#   end
# end
# self refers to the instance of the cat class
# which calls the method make_one_year_older
# You can also refer to it as Cat object
# Example: c = Cat.new("Pussycat"); c.make_one_year_older
# ---------- 8

# 9 ----------
# class Cat
#   @@cats_count = 0

#   def initialize(type)
#     @type = type
#     @age  = 0
#     @@cats_count += 1
#   end

#   def self.cats_count
#     @@cats_count
#   end
# end
# here, self refers to the class Cat
# ---------- 9

# 10 ----------
# class Bag
#   def initialize(color, material)
#     @color = color
#     @material = material
#   end
# end
# blue_cotton_bag = Bag.new("Blue", "cotton")
# ---------- 10