require 'spec_helper'

describe "weeksheets/show" do
  before(:each) do
    @weeksheet = assign(:weeksheet, stub_model(Weeksheet,
      :Week => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
