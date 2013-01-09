require 'spec_helper'

describe "controls/index" do
  before(:each) do
    assign(:controls, [
      stub_model(Control),
      stub_model(Control)
    ])
  end

  it "renders a list of controls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
