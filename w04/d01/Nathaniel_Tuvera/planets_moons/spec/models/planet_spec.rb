require 'spec_helper'

  describe @planet do
    describe "display string: Planet has X number of moons." do
    # wish code that works
    moon = Array.new
    moon << Moon.create(:name => 'Luna')
    puts "Planet has #{moon.count} number(s) of moons."
    actual = @moon
    expectation = "Planet has 1 number(s) of moons."
    # set expectation
    expected(actual).to eq(expectation)
    end
  end
