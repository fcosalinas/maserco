require 'spec_helper'

describe "controls/show" do
  before(:each) do
    @control = assign(:control, stub_model(Control))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
