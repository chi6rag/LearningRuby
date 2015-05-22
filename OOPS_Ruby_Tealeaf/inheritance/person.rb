class Person
	attr_accessor :name
	
	def initialize(name)
		@name = name
	end
end

class HappyPerson < Person
	attr_accessor :is_happy

	def initialize(name, is_happy)
		super(name)
		@is_happy = is_happy
	end
end

# hp = HappyPerson.new('Chirag', true)
# puts hp.is_happy