require 'spec_helper'

describe "planets/edit" do
  before(:each) do
    @planet = assign(:planet, stub_model(Planet,
      :name => "MyString",
      :image_url => "MyString",
      :diameter => 1,
      :mass => 1,
      :life => false
    ))
  end

  it "renders the edit planet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", planet_path(@planet), "post" do
      assert_select "input#planet_name[name=?]", "planet[name]"
      assert_select "input#planet_image_url[name=?]", "planet[image_url]"
      assert_select "input#planet_diameter[name=?]", "planet[diameter]"
      assert_select "input#planet_mass[name=?]", "planet[mass]"
      assert_select "input#planet_life[name=?]", "planet[life]"
    end
  end
end
