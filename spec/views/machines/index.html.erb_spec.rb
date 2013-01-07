require 'spec_helper'

describe "machines/index" do
  before(:each) do
    assign(:machines, [
      stub_model(Machine,
        :code => 1,
        :location => "Location",
        :description => "Description",
        :unit => "",
        :performance => "",
        :unitarycost => 2,
        :quantperunit => "",
        :realcost => ""
      ),
      stub_model(Machine,
        :code => 1,
        :location => "Location",
        :description => "Description",
        :unit => "",
        :performance => "",
        :unitarycost => 2,
        :quantperunit => "",
        :realcost => ""
      )
    ])
  end

  it "renders a list of machines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
