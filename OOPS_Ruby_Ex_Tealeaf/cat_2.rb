class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name 
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

cat_1 = AngryCat.new(2, 'Cat One')
cat_1.age
cat_1.name
cat_1.hiss
cat_2 = AngryCat.new(2, 'Cat Two')
cat_2.name
cat_2.age
cat_2.hiss