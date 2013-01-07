require 'spec_helper'

describe "materials/index" do
  before(:each) do
    assign(:materials, [
      stub_model(Material,
        :code => 1,
        :description => "Description",
        :unit => "",
        :loss => "",
        :adqvalue => 2,
        :transport => 3,
        :unitarycost => 4,
        :sitevalue => "",
        :realcost => ""
      ),
      stub_model(Material,
        :code => 1,
        :description => "Description",
        :unit => "",
        :loss => "",
        :adqvalue => 2,
        :transport => 3,
        :unitarycost => 4,
        :sitevalue => "",
        :realcost => ""
      )
    ])
  end

  it "renders a list of materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
