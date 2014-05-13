require 'spec_helper'

describe Planet do

  it "Puts information about itself" do
      planet = Planet.create({ name: "Earth",  image_url: "URL", diameter: 1, mass: 1, life: true})
      moon = Moon.create({ name: "Moon"})
      planet.moons << moon
      expect(planet.to_s).to eq("Earth is a planet with 1 moon(s), capable of sustaining life.")
  end

end


