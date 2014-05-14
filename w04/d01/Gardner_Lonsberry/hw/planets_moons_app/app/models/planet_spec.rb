require 'spec_helper'
  
  describe Planet do
    pending "add some examples to (or delete) #{__FILE__}"
    it "outputs string when to_s method is called" do
    @planet.to_s.should eql "Earth is a planet with 1 moon, capable of sustaining life."
  end

    it 'displays a string' do
    planet = Planet.create({name: 'Earth', mass: 1, diameter: 1, life: true, image_url: "l"})
    moon = Moon.create({name: 'moon', planet_id: planet.id})
    actual = planet.to_s
    expectation= "Earth is a planet with 2 moon(s), and is capable of supporting life."
    expect(actual).to eq(expectation)
  end
