require_relative 'lib/alien.rb'

puts "Please Enter the following: "
puts "Code Name: "
code_name = gets.chomp
puts("Blood Color: ")
blood_color = gets.chomp
puts "Number of Antennas: "
number_of_antennas = gets.chomp
puts("Number of Legs: ")
number_of_legs = gets.chomp
puts("Home Planet: ")
home_planet = gets.chomp
alien = Alien.new(code_name, blood_color, number_of_antennas, number_of_legs, home_planet)

puts "Select Export Format (Enter the Format Exactly)"
formats = alien.get_export_options
formats.map { |format, export_method_name| puts format }
choice = gets.chomp
begin
	alien.send formats[choice]
	puts "Details Successfully Exported!"
	puts "Welcome to Earth!"
rescue
	puts "\nWrong Choice\nPlease enter the format exactly"
end