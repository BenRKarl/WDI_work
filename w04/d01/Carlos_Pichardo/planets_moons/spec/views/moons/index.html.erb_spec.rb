require 'spec_helper'

describe "moons/index" do
  before(:each) do
    assign(:moons, [
      stub_model(Moon,
        :name => "Name",
        :planet_if => 1
      ),
      stub_model(Moon,
        :name => "Name",
        :planet_if => 1
      )
    ])
  end

  it "renders a list of moons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
