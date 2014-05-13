require 'spec_helper'

describe Planet do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Planet do
  it 'has a name' do
    planet = Planet.create({name: 'Venus'})
    actual = planet.name
    expectation = 'Venus'
    expect(actual).to_eq(expectation)
  end

#I'm not sure what a to_s test would look like?
