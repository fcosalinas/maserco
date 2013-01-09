require 'spec_helper'

describe "controls/edit" do
  before(:each) do
    @control = assign(:control, stub_model(Control))
  end

  it "renders the edit control form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => controls_path(@control), :method => "post" do
    end
  end
end
