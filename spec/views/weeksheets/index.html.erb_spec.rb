require 'spec_helper'

describe "weeksheets/index" do
  before(:each) do
    assign(:weeksheets, [
      stub_model(Weeksheet,
        :Week => 1
      ),
      stub_model(Weeksheet,
        :Week => 1
      )
    ])
  end

  it "renders a list of weeksheets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
