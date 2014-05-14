require 'spec_helper'

describe Planet do
  it 'has a nice display' do
    planet = Planet.create(name: 'earth', life: true)
    moon = Moon.create(name: moon)
    planet.moons << moon
    actual = planet.to_s
    expected = "This is earth. It is capable of sustaining life. It has 1 moon(s)."
    expect(actual).to eq(expected)
  end


end
