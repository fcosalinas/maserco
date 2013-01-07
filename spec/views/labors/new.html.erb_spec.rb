require 'spec_helper'

describe "labors/new" do
  before(:each) do
    assign(:labor, stub_model(Labor,
      :code => 1,
      :role => "MyString",
      :performance => 1,
      :dailylaws => 1,
      :unitarycost => 1,
      :totaldh => "",
      :realcost => ""
    ).as_new_record)
  end

  it "renders new labor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => labors_path, :method => "post" do
      assert_select "input#labor_code", :name => "labor[code]"
      assert_select "input#labor_role", :name => "labor[role]"
      assert_select "input#labor_performance", :name => "labor[performance]"
      assert_select "input#labor_dailylaws", :name => "labor[dailylaws]"
      assert_select "input#labor_unitarycost", :name => "labor[unitarycost]"
      assert_select "input#labor_totaldh", :name => "labor[totaldh]"
      assert_select "input#labor_realcost", :name => "labor[realcost]"
    end
  end
end
