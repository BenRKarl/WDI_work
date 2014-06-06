require 'spec_helper'

describe Juice do

  describe '#to_s' do

    it ' should return a short description' do
    danger_zone = Juice.new(
      {name: 'Danger Zone',
       flavor: 'savory',
       rating: 4,
       sizes: '10, 30, 50',
       niclevels: '0 to 32, increments of 2',
       recommend: true
       })
    actual = danger_zone.to_s
    expected = "Danger Zone: type: savory, rating: 4"
    end
  end
end
