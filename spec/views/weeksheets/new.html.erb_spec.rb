require 'spec_helper'

describe "weeksheets/new" do
  before(:each) do
    assign(:weeksheet, stub_model(Weeksheet,
      :Week => 1
    ).as_new_record)
  end

  it "renders new weeksheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weeksheets_path, :method => "post" do
      assert_select "input#weeksheet_Week", :name => "weeksheet[Week]"
    end
  end
end
