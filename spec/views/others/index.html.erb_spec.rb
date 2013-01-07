require 'spec_helper'

describe "others/index" do
  before(:each) do
    assign(:others, [
      stub_model(Other,
        :description => "Description",
        :quantity => "",
        :unitarycost => "",
        :cost => ""
      ),
      stub_model(Other,
        :description => "Description",
        :quantity => "",
        :unitarycost => "",
        :cost => ""
      )
    ])
  end

  it "renders a list of others" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
