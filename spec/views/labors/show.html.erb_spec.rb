require 'spec_helper'

describe "labors/show" do
  before(:each) do
    @labor = assign(:labor, stub_model(Labor,
      :code => 1,
      :role => "Role",
      :performance => 2,
      :dailylaws => 3,
      :unitarycost => 4,
      :totaldh => "",
      :realcost => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Role/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
