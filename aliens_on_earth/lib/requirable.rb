module Requirable
	def require_formats
		Dir.foreach('./formats/').each do |f|
			next if f == '.' || f == '..'
			f.gsub!(/\..*/, '')
			yield f
		end
	end
end