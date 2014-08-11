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
end
