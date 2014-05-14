require 'spec_helper'

describe Planet do

  it 'describes itself' do
    planet = Planet.create(name: "Random", life: true)
    moon = Moon.create(name: "RsMoon")
    planet.moons << moon
    actual = planet.to_s
    expected = 'Random is a planet with 1 moon(s), capable of sustaining life.'
    expect(actual).to eq(expected)
  end

end
