module FormatText
	
	def export_details_as_text
		file_name = self.code_name.to_s + ".txt"
		File.open(file_name, 'w+') do |f|
			self.instance_variables.each do |instance_variable|
				f.puts instance_variable.to_s.gsub(/^@/, '') + ": " +
				       self.instance_variable_get(instance_variable).to_s
			end
		end
	end
	
end