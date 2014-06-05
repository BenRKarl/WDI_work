# require 'rails_helper'

# RSpec.describe Person, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

require 'spec_helper'

describe Person do

  describe '#to_s' do
    it 'should return formatted name' do
      lich = Person.new({name: 'Lichard', email: 'lich@glichmail.com'})
      actual = lich.to_s
      expected = 'Lichard (lich@glichmail.com)'
      expect(actual).to eq(expected)
    end
  end

end
