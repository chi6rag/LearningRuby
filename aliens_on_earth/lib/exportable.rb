require_relative '../formats/format_text'
require_relative '../formats/format_pdf'

module Exportable
	include FormatPDF
	include FormatText
end