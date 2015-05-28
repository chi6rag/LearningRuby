load './registrable.rb'

class Alien
	include Registrable
	attr_reader :code_name, :blood_color, :number_of_antennas, :number_of_legs,
	            :home_planet

	def initialize(code_name, blood_color, number_of_antennas, number_of_legs, home_planet)
		@code_name = code_name
		@blood_color = blood_color
		@number_of_antennas = number_of_antennas
		@number_of_legs = number_of_legs
		@home_planet = home_planet
	end
end

# alien = Alien.new(1234, 'red', 2, 4, 'Mars')
# alien.export_details_as_text