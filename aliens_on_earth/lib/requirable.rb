module Requirable
	def require_formats
		Dir.foreach('./formats/').each do |f|
			next if f == '.' || f == '..'
			yield f
		end
	end
end