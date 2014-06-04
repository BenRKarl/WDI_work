require 'spec_helper'

describe Person do

  describe "#to_s" do
    it "return formatted name" do
      lich = Person.new({name: "Lichard", email: "lich@gmail.com"})
      actual = lich.to_s
      expected = "Lichard (lich@gmail.com)"
      expect(actual).to eq(expected)
    end

  end

end