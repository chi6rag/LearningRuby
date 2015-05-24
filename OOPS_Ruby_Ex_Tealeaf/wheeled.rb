module Movable
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency
  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include Movable
  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures along with 
    super([20,20], 80, 8.0)
  end
end

class SeaCraft
  include Movable
  attr_accessor :propeller_count, :hull_count
  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @num_propellers = num_propellers
    @num_hulls = num_hulls
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def range
    super + 10
  end
end

class Catamaran < SeaCraft
  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end

class MotorBoat < SeaCraft
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    @num_propellers = @num_hulls = 1
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end





# puts "----- motor cycle -----"
# motor_cycle = Motorcycle.new
# (0..1).each do |index|
#   puts motor_cycle.tire_pressure(index)
# end
# puts "----- inflating tire -----"
# motor_cycle.inflate_tire(1, 36)
# puts motor_cycle.tire_pressure(1)
# puts "Motor Cycle's Range: " + motor_cycle.range.to_s

# puts "----- auto -----"
# auto = Auto.new
# (0..3).each do |index|
#   puts auto.tire_pressure(index)
# end
# puts "----- inflating tire -----"
# auto.inflate_tire(1, 36)
# puts auto.tire_pressure(1)
# puts "Auto's Range: " + auto.range.to_s