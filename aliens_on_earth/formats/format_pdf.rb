module FormatPDF

	def export_details_as_pdf
		file_name = self.code_name.to_s + ".pdf"
		Prawn::Document.generate(file_name) do |f|
			self.instance_variables.each do |instance_variable|
				f.text instance_variable.to_s.gsub(/^@/, '') + ": " +
				       self.instance_variable_get(instance_variable).to_s
			end
		end
	end

end