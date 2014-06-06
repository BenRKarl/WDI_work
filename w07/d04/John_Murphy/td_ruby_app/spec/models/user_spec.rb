require 'spec_helper'

describe User do
  before :each do
    @andre = User.new(username: "andre", email: 'andre@3000.com')
  end

  it 'has a username' do
    actual = @andre.username
    expected = "andre"
    expect(actual).to eq(expected)
  end

  it 'has an email' do
    actual = @andre.email
    expected = "andre@3000.com"
    expect(actual).to eq(expected)
  end

end
