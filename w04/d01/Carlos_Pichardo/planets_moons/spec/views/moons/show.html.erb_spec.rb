require 'spec_helper'

describe "moons/show" do
  before(:each) do
    @moon = assign(:moon, stub_model(Moon,
      :name => "Name",
      :planet_if => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
