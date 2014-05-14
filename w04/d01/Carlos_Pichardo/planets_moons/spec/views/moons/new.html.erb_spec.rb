require 'spec_helper'

describe "moons/new" do
  before(:each) do
    assign(:moon, stub_model(Moon,
      :name => "MyString",
      :planet_if => 1
    ).as_new_record)
  end

  it "renders new moon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", moons_path, "post" do
      assert_select "input#moon_name[name=?]", "moon[name]"
      assert_select "input#moon_planet_if[name=?]", "moon[planet_if]"
    end
  end
end
