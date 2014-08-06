describe Converter do

  let(:converter) { @converter = Converter.new }

  describe "#convert_paragraph" do

    it "wraps paragraphs in <p> tags" do
      expect(converter.convert_paragraph("test")).to eq "<p>test</p>"
    end

  end
end
