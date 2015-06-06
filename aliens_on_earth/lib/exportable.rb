require_relative './requirable.rb'
include Requirable
require_formats { |f| require_relative "../formats/#{f}" }

module Exportable
	require_formats { |f|
		format = f.split('_').map{|s| s.capitalize!}.join
		include Kernel.const_get(format)
	}
end