require 'spec_helper'

describe "labors/index" do
  before(:each) do
    assign(:labors, [
      stub_model(Labor,
        :code => 1,
        :role => "Role",
        :performance => 2,
        :dailylaws => 3,
        :unitarycost => 4,
        :totaldh => "",
        :realcost => ""
      ),
      stub_model(Labor,
        :code => 1,
        :role => "Role",
        :performance => 2,
        :dailylaws => 3,
        :unitarycost => 4,
        :totaldh => "",
        :realcost => ""
      )
    ])
  end

  it "renders a list of labors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
