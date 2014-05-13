require 'spec_helper'

describe Planet do
  # wish code that works
  planet = Moon.create(:name => 'Luna')
  actual = @moon.length
  expectation = 1
  # set expectation
  expect(actual).to eq(expectation)
  end
end
