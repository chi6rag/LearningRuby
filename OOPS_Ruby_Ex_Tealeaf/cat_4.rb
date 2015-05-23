class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    @age += 1
  end
end

c = Cat.new('tuffy')
puts c.age
puts "---- making one year older ----"
c.make_one_year_older
puts c.age