require_relative './requirable.rb'
include Requirable
# requires all the files in ./formats directory
require_formats { |f| require_relative "../formats/#{f}" }
# require activesupport

module Exportable
	
	# Include the module in each script in ./formats directory
	require_formats { |f|
		format_file = File.read "./formats/#{f}"
		format_module = format_file.match(/module\s(.*)/)[1]
		include Kernel.const_get(format_module)
	}

	def get_export_options
		options = {}
		require_formats { |f|
			format_file = File.read "./formats/#{f}"
			format = format_file.match(/module\s(.*)/)[1]
			export_method_name = format_file.match(/def\s(.*)/)[1]
			options[format] = export_method_name
		}
		options
	end

end