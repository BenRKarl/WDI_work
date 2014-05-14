require 'spec_helper'

describe Planet do
  it 'can describe itself' do
    planet = Planet.create({name: "Earth"})
    expectation = "Earth is a planet with 1 moon, capable of sustaining life."
    expect(planet.to_s).to eq(expectation)
  end
end
