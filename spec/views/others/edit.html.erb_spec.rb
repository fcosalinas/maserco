require 'spec_helper'

describe "others/edit" do
  before(:each) do
    @other = assign(:other, stub_model(Other,
      :description => "MyString",
      :quantity => "",
      :unitarycost => "",
      :cost => ""
    ))
  end

  it "renders the edit other form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => others_path(@other), :method => "post" do
      assert_select "input#other_description", :name => "other[description]"
      assert_select "input#other_quantity", :name => "other[quantity]"
      assert_select "input#other_unitarycost", :name => "other[unitarycost]"
      assert_select "input#other_cost", :name => "other[cost]"
    end
  end
end
