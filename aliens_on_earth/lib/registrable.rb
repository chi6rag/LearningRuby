require_relative '../formats/format_text'
require_relative '../formats/format_pdf'

module Registrable
	require 'prawn'
	include FormatPDF
	include FormatText
end