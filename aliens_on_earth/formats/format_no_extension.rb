module FormatNoExtension

	def export_details_without_extension
		file_name = self.code_name.to_s
		File.open("./registered_aliens/" + file_name, 'w+') do |f|
			f.puts "Details for Alien ##{self.code_name}\n"
			f.puts " "
			self.instance_variables.each do |instance_variable|
				f.puts instance_variable.to_s.gsub(/^@/, '') + ": " +
				       self.instance_variable_get(instance_variable).to_s
			end
		end
	end

end