require 'spec_helper'

describe "planets/show" do
  before(:each) do
    @planet = assign(:planet, stub_model(Planet,
      :name => "Name",
      :image_url => "Image Url",
      :diameter => 1,
      :mass => 2,
      :life => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Image Url/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
  end
end
