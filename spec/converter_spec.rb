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

    

   end

end
