require 'spec_helper'

describe Planet do
  #pending "add some examples to (or delete) #{__FILE__}"




    it 'displays a string' do
    #wish code that words

    planet = Planet.create({name: 'Earth', mass: 1, diameter: 1, life: true, image_url: "xx"})
    moon = Moon.create({name: 'moon', planet_id: planet.id})
     moon2 = Moon.create({name:'moon2', planet_id: planet.id})
    actual = planet.to_s
    expectation= "Earth is a planet with 2 moon(s), and is capable of supporting life."
    
    #set expectation
    expect(actual).to eq(expectation)
  end


end