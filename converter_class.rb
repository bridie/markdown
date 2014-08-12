class Converter

	def convert_paragraph(string)
		html = string.gsub("\n", "</p><p>")
		html = "<p>" << html
		html = html << "</p>"
	end

	def convert_italics(string)
		string.gsub(/(?<!<p>)(?<!\*)\*(?!\*)(.+)(?<!\*)\*(?!\*)/, "<em>\\1</em>")
	end

	def convert_bold(string)
		string.gsub(/\*\*(.+)\*\*/, "<b>\\1</b>")
	end

	def convert_list(string)
		string = string.gsub(/\<p\>\*(.+?)\<\/p\>/, "<li>\\1</li>")
		string.gsub(/(\<li\>.+?\<\/li\>(?!\<li\>))/, "<ul>\\1</ul>")		
	end

end