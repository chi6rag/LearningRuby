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

puts "Select format to save:\n1. PDF\n2. text"
choice = gets.chomp.downcase

if choice.match(/pdf|1/) 
	alien.export_details_as_pdf
	puts "Details exported as PDF!\nWelcome to Earth"
else
  alien.export_details_as_text
	puts "Details exported as Text!\nWelcome to Earth"
end