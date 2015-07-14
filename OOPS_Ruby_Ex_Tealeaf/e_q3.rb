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
# class Greeting
#   def greet(message)
#     puts message
#   end

#   def self.greet(message)
#     puts message
#   end
# end

# class Hello < Greeting
#   def hi
#     greet("Hello")
#   end

#   def self.hi
#   	greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end
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
class Television
  def self.manufacturer
    # method logic
  end 

  def model
    # method logic
  end
end
tv = Television.new
tv.manufacturer
tv.model

Television.manufacturer
Television.model
# ---------- 5

# 6 ----------
# ---------- 6

# 7 ----------
# ---------- 7