# 1 ----------
# class SecretFile

#   def initialize(secret_data, logger)
#     @data = secret_data
#     @logger = logger
#   end

#   def data
#   	@logger.create_log_entry
#   	@data
#   end

# end

# class SecurityLogger
#   def create_log_entry
#     # ... implementation omitted ...
#   end
# end
# ---------- 1

# 2 ----------
# module Movable
# 	attr_accessor  :speed, :heading, :range

# 	def range
#     self.range = self.fuel_capacity * self.fuel_efficiency
#   end

# end

# class WheeledVehicle
# 	include Movable
#   def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
#     @tires = tire_array
#     @fuel_efficiency = km_traveled_per_liter
#     @fuel_capacity = liters_of_fuel_capacity
#   end

#   def tire_pressure(tire_index)
#     @tires[tire_index]
#   end

#   def inflate_tire(tire_index, pressure)
#     @tires[tire_index] = pressure
#   end
# end

# class Auto < WheeledVehicle
#   def initialize
#     # 4 tires are various tire pressures
#     super([30,30,32,32], 50, 25.0)
#   end
# end

# class Motorcycle < WheeledVehicle
#   def initialize
#     # 2 tires are various tire pressures along with 
#     super([20,20], 80, 8.0)
#   end
# end

# class Catamaran
# 	include Movable
#   attr_accessor :propeller_count, :hull_count

#   def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
#     # ... code omitted ...
#   end
# end
# ---------- 2

# 3 ----------
# module Movable
# 	attr_accessor  :speed, :heading, :range

# 	def range
#     self.range = self.fuel_capacity * self.fuel_efficiency
#   end

# end

# class WheeledVehicle
# 	include Movable
#   def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
#     @tires = tire_array
#     @fuel_efficiency = km_traveled_per_liter
#     @fuel_capacity = liters_of_fuel_capacity
#   end

#   def tire_pressure(tire_index)
#     @tires[tire_index]
#   end

#   def inflate_tire(tire_index, pressure)
#     @tires[tire_index] = pressure
#   end
# end

# class Auto < WheeledVehicle
#   def initialize
#     # 4 tires are various tire pressures
#     super([30,30,32,32], 50, 25.0)
#   end
# end

# class Motorcycle < WheeledVehicle
#   def initialize
#     # 2 tires are various tire pressures along with 
#     super([20,20], 80, 8.0)
#   end
# end

# class Seacraft
# 	include Movable
# 	attr_accessor :propeller_count, :hull_count

# 	def initialize(propeller_count, hull_count, km_traveled_per_liter, liters_of_fuel_capacity)
#     self.propeller_count = propeller_count
#     self.hull_count = hull_count
#     @fuel_efficiency = km_traveled_per_liter
#     @fuel_capacity = liters_of_fuel_capacity
#   end

# end

# class Catamaran < Seacraft
#   def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
#     super(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
#   end

# end

# class Motorboat < Seacraft
#   def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
#     super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
#   end

# end
# ---------- 3

# 4 ----------
module Movable
	attr_accessor  :speed, :heading, :range

	def range
    self.range = self.fuel_capacity * self.fuel_efficiency
  end

end

class WheeledVehicle
	include Movable
  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
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

class Seacraft
	include Movable
	attr_accessor :propeller_count, :hull_count

	def initialize(propeller_count, hull_count, km_traveled_per_liter, liters_of_fuel_capacity)
    self.propeller_count = propeller_count
    self.hull_count = hull_count
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

	def range
    self.range = (self.fuel_capacity * self.fuel_efficiency) + 10
  end

end

class Catamaran < Seacraft
  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
  end

end

class Motorboat < Seacraft
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end

end
# ---------- 4