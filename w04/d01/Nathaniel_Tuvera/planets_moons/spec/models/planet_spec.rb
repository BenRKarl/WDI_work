require 'spec_helper'

  describe Planets do
    describe "display string: Planet has X number of moons." do
    # wish code that works
    moon = Moon.create(:name => 'Luna')
    puts "Planet has #{moon.count} number(s) of moons."
    actual = @moon.count
    expectation = "Planet has 1 number(s) of moons."
    # set expectation
    expect(actual).to eq(expectation)
    end
  end
end
