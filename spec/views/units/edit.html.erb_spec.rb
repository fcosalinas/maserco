require 'spec_helper'

describe "units/edit" do
  before(:each) do
    @unit = assign(:unit, stub_model(Unit,
      :description => "MyString"
    ))
  end

  it "renders the edit unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => units_path(@unit), :method => "post" do
      assert_select "input#unit_description", :name => "unit[description]"
    end
  end
end
