require 'spec_helper'

describe Person do

  describe "#to_s" do
    it 'schould return formated name' do
      lich = Person.new({name: 'Lichard', email: 'lichard@glichmail.com'})
      actual = lich.to_s
      expected = 'Lichard (lichard@glichmail.com)'
      expect(actual).to eq(expected)
    end
  end

end
