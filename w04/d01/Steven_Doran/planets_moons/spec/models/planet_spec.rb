require 'spec_helper'

describe Planet do
  it "can describe itself" do 
    planet = Planet.create name: 'Mars', image_url: "https://www.cbc.ca", diameter: 15, mass: 12, life: true
    moon = Moon.create name: 'Greg'
    planet << moon
    expect planet.to_s.to eq "Earth is a planet with 1 moon(s), capable of sustaining life."
  end
 
end
