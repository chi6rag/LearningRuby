module Speed
  def go_fast
  	puts "#{self.class} is going fast fast fast"
  end
end

class Car
  include Speed
  def go_slow
    puts "Car: I am safe and driving slow."
  end
end

class Truck
	include Speed
  def go_very_slow
    puts "Truck: I am a heavy truck and like going very slow."
  end
end

c = Car.new
c.go_fast
# c.go_slow
t = Truck.new
t.go_fast
# t.go_very_slow
# puts c.respond_to?(:go_fast)
# puts t.respond_to?(:go_fast)