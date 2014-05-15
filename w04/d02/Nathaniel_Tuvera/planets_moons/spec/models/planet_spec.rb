require 'spec_helper'

  describe @planet do
   it "counts moons" do
    # wish code that works
    planet = Planet.new({name: 'Earth', image_url: 'http://www.photoshopgurus.com/forum/attachments/general-photoshop-board/3134d1302575637t-well-i-give-up-can-someone-show-me-how-do-technique-planet_glow_00.png', diameter: 7918, mass: 5.972, life: true})
    moon_arr = Array.new
    moon_arr.insert(Moon.new(:name => 'Luna'))
    actual = moon_arr.count
    expectation = "Planet has 1 number(s) of moons."
    # set expectation
    expect(planet.to_s).to eq(expectation)
    end
  end
