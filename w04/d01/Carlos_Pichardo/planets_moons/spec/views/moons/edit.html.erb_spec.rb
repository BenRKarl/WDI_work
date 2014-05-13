require 'spec_helper'

describe "moons/edit" do
  before(:each) do
    @moon = assign(:moon, stub_model(Moon,
      :name => "MyString",
      :planet_if => 1
    ))
  end

  it "renders the edit moon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", moon_path(@moon), "post" do
      assert_select "input#moon_name[name=?]", "moon[name]"
      assert_select "input#moon_planet_if[name=?]", "moon[planet_if]"
    end
  end
end
