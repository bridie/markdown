class Converter

	def convert_paragraph(string)
		html = string.gsub("\n", "</p><p>")
		html = "<p>" << html
		html = html << "</p>"
	end

	def convert_italics(string)
		string.gsub(/(?<!<p>)(?<!\*)\*(?!\*)(.+?)(?<!\*)\*(?!\*)/, "<em>\\1</em>")
	end

	def convert_bold(string)
		string.gsub(/\*\*(.+)\*\*/, "<b>\\1</b>")
	end

	def convert_list(string)
		string = string.gsub(/\<p\>\*(.+?)\<\/p\>/, "<li>\\1</li>")
		string.gsub(/(\<li\>.+?\<\/li\>(?!\<li\>))/, "<ul>\\1</ul>")	
	end

	def convert_link(string)
		string.gsub(/\[(.+?)\]\((.+?)\)/, "<a href='\\2'>\\1</a>")
	end

	def convert_strikethrough(string)
		string.gsub(/~~(.+)~~/, "<del>\\1</del>")
	end

	def convert_superscript(string)
		string.gsub(/\^(.+?)(\s|\<\/p\>)/, "<sup>\\1</sup>\\2")
	end

	def convert_all_text(plaintext)
		converter = Converter.new
		html = converter.convert_paragraph(plaintext)
		html = converter.convert_italics(html)
		html = converter.convert_bold(html)
		html = converter.convert_list(html)
		html = converter.convert_link(html)
		html = converter.convert_strikethrough(html)
		html = converter.convert_superscript(html)
	end

end