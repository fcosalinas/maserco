require 'spec_helper'

describe "weeksheets/edit" do
  before(:each) do
    @weeksheet = assign(:weeksheet, stub_model(Weeksheet,
      :Week => 1
    ))
  end

  it "renders the edit weeksheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weeksheets_path(@weeksheet), :method => "post" do
      assert_select "input#weeksheet_Week", :name => "weeksheet[Week]"
    end
  end
end
