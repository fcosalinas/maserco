require 'spec_helper'

describe "materials/show" do
  before(:each) do
    @material = assign(:material, stub_model(Material,
      :code => 1,
      :description => "Description",
      :unit => "",
      :loss => "",
      :adqvalue => 2,
      :transport => 3,
      :unitarycost => 4,
      :sitevalue => "",
      :realcost => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Description/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
