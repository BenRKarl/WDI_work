require 'spec_helper'

describe Planet do

  it 'has a name' do
    planet = Planet.create(name: "Random")
    actual = planet.name
    expected = 'Random'
    expect(actual).to eq(expected)
  end

end
