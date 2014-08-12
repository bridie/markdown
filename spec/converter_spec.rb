describe Converter do

  let(:converter) { @converter = Converter.new }

  describe "#convert_paragraph" do

    it "wraps paragraphs in <p> tags" do
      expect(converter.convert_paragraph("test")).to eq "<p>test</p>"
    end

    it "wraps multiple paragraphs in <p> tags" do
      expect(converter.convert_paragraph("test\nanother line")).to eq "<p>test</p><p>another line</p>"
    end

  end

  describe "#convert_italics" do

  	it "wraps a word wrapped in astericks in <em> tags" do
    	expect(converter.convert_italics("*test*")).to eq "<em>test</em>"
    end

    it "wraps text (including spaces) wrapped in astericks in <em> tags" do
    	expect(converter.convert_italics("*test test*")).to eq "<em>test test</em>"
    end

   end

   describe "#convert_bold" do

    it "wraps a word wrapped in double astericks in <b> tags" do
      expect(converter.convert_bold("**test**")).to eq "<b>test</b>"
    end

    it "wraps text (including spaces) wrapped in double astericks in <b> tags" do
      expect(converter.convert_bold("**test test**")).to eq "<b>test test</b>"
    end

   end

   describe "#convert_list" do

    it "wraps text wrapped in <p> tags and beginning with an asterisk in <li> tags, <li> tags also wrapped in <ul> tags" do
      expect(converter.convert_list("<p>*item 1</p><p>*item 2</p>")).to eq "<ul><li>item 1</li><li>item 2</li></ul>"
    end

    it "wraps text wrapped in <p> tags and beginning with an asterisk in <li> tags, <li> tags also wrapped in <ul> tags for multiple list embedded within text" do
      expect(converter.convert_list("<p>*item 1</p><p>*item 2</p><p>non list text</p><p>*item 3</p><p>*item 4</p>"))
      .to eq "<ul><li>item 1</li><li>item 2</li></ul><p>non list text</p><ul><li>item 3</li><li>item 4</li></ul>"
    end

   end

end
