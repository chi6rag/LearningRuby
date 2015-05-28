module Registrable
	require 'prawn'

	def export_as_text
		file_name = self.code_name.to_s + ".txt"
		File.open(file_name, 'w+') do |f|
			self.instance_variables.each do |instance_variable|
				f.puts instance_variable.to_s.gsub(/^@/, '') + ": " +
				       self.instance_variable_get(instance_variable).to_s
			end
		end
	end
	
	def export_as_pdf
		file_name = self.code_name.to_s + ".pdf"
		Prawn::Document.generate(file_name) do |f|
			self.instance_variables.each do |instance_variable|
				f.text instance_variable.to_s.gsub(/^@/, '') + ": " +
				       self.instance_variable_get(instance_variable).to_s
			end
		end
	end

end


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

alien = Alien.new(1,2,3,4,5)
alien.export_as_text