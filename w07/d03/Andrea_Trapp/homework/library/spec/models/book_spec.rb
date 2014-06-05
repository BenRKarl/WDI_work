require 'spec_helper'

describe Book do
 
  describe "#to_s" do
    it "return formatted book info" do
      cookbook = Book.new({title: "My favorite cookbook", author: "Irma Brissout"})
      actual = cookbook.to_s
      expected = "My favorite cookbook, written by Irma Brissout"
      expect(actual).to eq(expected)
    end
  end

end
