#  Way 1
# class Person
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
# end
# bob = Person.new("Steve")
# puts bob.name = "Bob"

# Way 2
class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def name=(name)
  	@name = name
  end

end
bob = Person.new("Steve")
puts bob.name = "Bob"