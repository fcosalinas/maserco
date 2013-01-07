require 'spec_helper'

describe "machines/new" do
  before(:each) do
    assign(:machine, stub_model(Machine,
      :code => 1,
      :location => "MyString",
      :description => "MyString",
      :unit => "",
      :performance => "",
      :unitarycost => 1,
      :quantperunit => "",
      :realcost => ""
    ).as_new_record)
  end

  it "renders new machine form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machines_path, :method => "post" do
      assert_select "input#machine_code", :name => "machine[code]"
      assert_select "input#machine_location", :name => "machine[location]"
      assert_select "input#machine_description", :name => "machine[description]"
      assert_select "input#machine_unit", :name => "machine[unit]"
      assert_select "input#machine_performance", :name => "machine[performance]"
      assert_select "input#machine_unitarycost", :name => "machine[unitarycost]"
      assert_select "input#machine_quantperunit", :name => "machine[quantperunit]"
      assert_select "input#machine_realcost", :name => "machine[realcost]"
    end
  end
end
