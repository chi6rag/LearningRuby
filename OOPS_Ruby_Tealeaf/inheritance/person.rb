class Person
	attr_accessor :name
	
	def initialize(name)
		@name = name
	end

	def hi
		"Hi"
	end
end

class HappyPerson < Person
	attr_accessor :is_happy

	def initialize(name, is_happy)
		super(name)
		@is_happy = is_happy
	end
end

class Son < Person
	def say_hi
		"Hi from Child"
	end

	def send
		"Send from Child"
	end

	def instance_of?
		"I am a fake instance"
	end
end

# hp = HappyPerson.new('Chirag', true)
# puts hp.is_happy
# s = Son.new('A')
# puts s.send :say_hi
# puts s.instance_of? Son

bob = Person.new('Bob')
puts bob.hi