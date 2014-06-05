require 'spec_helper'

describe User do
  describe "#to_s" do 
	it 'should return formatted name' do 
		carl = Person.new({name: 'Carlos'})
		actual = carl.to_s 
		expected = 'Carlos'
		expect(actual).to eq(expected)
	end 
end
end
