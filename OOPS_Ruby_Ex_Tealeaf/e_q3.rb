# 1 ----------
# class Greeting
#   def greet(message)
#     puts message
#   end
# end

# class Hello < Greeting
#   def hi
#     greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end

# case 1
# hello = Hello.new
# hello.hi
# => Hello

# case 2
# hello = Hello.new
# hello.bye
# => NoMethodError

# case 3
# hello = Hello.new
# hello.greet
# ArgumentError: 0 arguments for 1

# case 4
# hello = Hello.new
# hello.greet("Goodbye")
# => Goodbye

# case 5
# Hello.hi
# NoMethodError
# ---------- 1

# 2 ----------
class Greeting
  def greet(message)
    puts message
  end

  def self.greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end

  def self.hi
  	greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end
# Hello.hi
# ---------- 2

# 3 ----------
# class AngryCat
#   def initialize(age, name)
#     @age  = age
#     @name = name 
#   end

#   def age
#     puts @age
#   end

#   def name
#     puts @name
#   end

#   def hiss
#     puts "Hisssss!!!"
#   end
# end
# angry_cooby = AngryCat.new(1, "AngryCooby")
# angry_v = AngryCat.new(1, "AngryV")
# ---------- 3

# 4 ----------
# class Cat
#   def initialize(type)
#     @type = type
#   end

#   def to_s
#   	"I am a #{@type} cat"
#   end

# end
# puffy = Cat.new("Puffy")
# puts puffy
# ---------- 4

# 5 ----------
# class Television
#   def self.manufacturer
#     # method logic
#   end 

#   def model
#     # method logic
#   end
# end
# tv = Television.new
# tv.manufacturer
# => NoMethodError
# tv.model
# Execute the model instance method on TV Class

# Television.manufacturer
# Execute the manufacturer class method on TV Class
# Television.model
# => NoMethodError
# ---------- 5

# 6 ----------
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end
# Other Way: replace self.age with @age to avoid self keyword
# ---------- 6

# 7 ----------
class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color 
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a colour of green"
  end
end
# return keyword in class method information
# ---------- 7