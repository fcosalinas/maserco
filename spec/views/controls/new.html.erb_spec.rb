require 'spec_helper'

describe "controls/new" do
  before(:each) do
    assign(:control, stub_model(Control).as_new_record)
  end

  it "renders new control form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => controls_path, :method => "post" do
    end
  end
end
