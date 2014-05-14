require 'spec_helper'

describe Planet do
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'should produce an appropriate response to a to_s method' do
    planet = Planet.create( { name: "Betelgeuse", mass: "1000", diameter: "1000", life: true} )
    actual = planet.to_s
    expect(actual).to eq("Betelgeuse is a planet with a mass of 1000, a diameter of 1000, and its life status is true. It has 0 moons.")
  end
end
