class GoodDog
	attr_accessor :name, :height, :weight
	attr_reader :age

	def initialize(name, height, weight)
		@name = name
		@height = height
		@weight = weight
	end

	def speak
		"#{name} says Arf!"
	end

	def info
		"#{name} is of height #{height} && weighs #{weight}"
	end

	def change_info(name, height, weight)
		# @name = name
		# @height = height
		# @weight = weight
		self.name = name
		self.height = height
		self.weight = weight
	end

end

sparky = GoodDog.new("Sparky", "2ft", 35)
# puts sparky.speak
# puts sparky.name
# puts sparky.name
# sparky.name = "Sparkyyyie"
# puts sparky.name
puts sparky.info

fido = GoodDog.new("Fido", "1.8ft", 34)
# puts fido.speak
puts fido.info