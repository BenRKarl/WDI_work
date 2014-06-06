require 'spec_helper'

describe Race do



  describe "#to_s" do
    it 'should return formatted name' do
        montauk = Race.new({name: 'Mighty Montauk', location: 'Montauk', date: 'October 2012', time:'6 hours 30 mins'})
        actual = montauk.to_s
        expected = 'Mighty Montauk (Montauk) (October 2012) (6 hours 30 mins)'
        expect(actual).to eq(expected)

    end

    end
end
