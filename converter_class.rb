class Converter

	def convert_paragraph(string)
		html = string.gsub("\n", "</p><p>")
		html = "<p>" << html
		html = html << "</p>"
	end

end