class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

class AngryCat < Cat
  def hiss
    puts "Hisssss!!!"
  end
end

c = AngryCat.new
c.hiss