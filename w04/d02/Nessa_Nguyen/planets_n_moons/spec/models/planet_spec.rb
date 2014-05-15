require 'spec_helper'


describe Planet do
  it 'can describe itself' do
    earth = Planet.create({name: 'Earth',  life: true})
    earth.moons << Moon.create({name: 'the moon'})

    expect(earth.to_s).to eq "Earth is a planet with 1 moon(s), capable of sustaining life."
  end

end

    
