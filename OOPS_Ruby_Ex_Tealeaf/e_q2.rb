# 1 ----------
# class Oracle
#   def predict_the_future
#     "You will " + choices.sample
#   end

#   def choices
#     ["eat a nice lunch", "take a nap soon", "stay at work late"]
#   end
# end
# oracle = Oracle.new
# oracle.predict_the_future
# oracle.predict_the_future selects a random string out of
# the choices array, concatinates it with "You will" and
# returns the result
# practically, puts hasn't been used, thus nothing printed
# ---------- 1

# 2 ----------
# class Oracle
#   def predict_the_future
#     "You will " + choices.sample
#   end

#   def choices
#     ["eat a nice lunch", "take a nap soon", "stay at work late"]
#   end
# end

# class RoadTrip < Oracle
#   def choices
#     ["visit Vegas", "fly to Fiji", "romp in Rome"]
#   end
# end
# trip = RoadTrip.new
# trip.predict_the_future
# result will be any of:
#   - You will visit Vegas
#   - You will fly to Fiji
#   - You will romp in Rome
# ---------- 2

# 3 ----------
# module Taste
#   def flavor(flavor)
#     puts "#{flavor}"
#   end
# end

# class Orange
#   include Taste
# end

# class HotSauce
#   include Taste
# end
# How do you find where Ruby will look for a method when that method is called?
# A: Like so:
#    First in the same class
#    Then in the modules, from last to first
#    Then in the parent class of that object
#    Going up the ancestors chain

# How can you find an object's ancestors?
# ClassName.ancestors method

# What is the lookup chain for Orange and HotSauce?
# Oragne => [Orange, Taste, Object, Kernel, BasicObject]
# HotSauce => [HotSauce, Taste, Object, Kernel, BasicObject]
# ---------- 3

# 4 ----------
# class BeesWax
#   def initialize(type)
#     @type = type
#   end

#   def type
#     @type
#   end

#   def type=(t)
#     @type = t
#   end

#   def describe_type
#     puts "I am a #{@type} of Bees Wax"
#   end
# end
# add attr_accessor :type
# to remove getter and setter type methods
# ---------- 4

# 5 ----------
# excited_dog = "excited dog"
# @excited_dog = "excited dog"
# @@excited_dog = "excited dog"
# excited_dog - local variable
# @excited_dog - instance variable -> @ sign
# @@excited_dog - class variable -> @@ sign
# ---------- 5

# 6 ----------
# class Television
#   def self.manufacturer
#     # method logic
#   end 

#   def model
#     # method logic
#   end
# end
# Class Method: self.manufacturer
# How: self keyword
# How to call: Television.manufacturer
# ---------- 6

# ---------- 7
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
# @@cats_count keeps track of the number of cats
# test: Cat.cats_count
# 7 ----------

# 8 ----------
# class Game
#   def play
#     "Start the game!"
#   end
# end
# class Bingo < Game
#   def rules_of_play
#     #rules of play
#   end
# end
# Add the < Game keyword
# ---------- 8

# 9 ----------
# class Game
#   def play
#     "Start the game!"
#   end
# end

# class Bingo < Game
#   def rules_of_play
#     #rules of play
#   end
# end
# Override 
# ---------- 9

