module FormatPDF
	require 'prawn'
	def export_details_as_pdf
		file_name = self.code_name.to_s + ".pdf"
		Prawn::Document.generate("./registered_aliens/" + file_name) do |f|
			f.text "Details for Alien ##{self.code_name}\n"
			f.text " "
			self.instance_variables.each do |instance_variable|
				f.text instance_variable.to_s.gsub(/^@/, '') + ": " +
				       self.instance_variable_get(instance_variable).to_s
			end
		end
	end

end