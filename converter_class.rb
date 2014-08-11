class Converter

	def convert_paragraph(string)
		html = string.gsub("\n", "</p><p>")
		html = "<p>" << html
		html = html << "</p>"
	end

	def convert_italics(string)
		string.gsub(/\*(.+?)\*/m, "<em>\\1</em>")
	end

end