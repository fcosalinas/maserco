require 'spec_helper'

describe "units/index" do
  before(:each) do
    assign(:units, [
      stub_model(Unit,
        :description => "Description"
      ),
      stub_model(Unit,
        :description => "Description"
      )
    ])
  end

  it "renders a list of units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
