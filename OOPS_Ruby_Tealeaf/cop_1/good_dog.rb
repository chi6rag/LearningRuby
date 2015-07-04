class GoodDog
	@@count = 0
	def initialize(name)
		@name = name
		@@count += 1
	end

	def self.count
		@@count
	end

end