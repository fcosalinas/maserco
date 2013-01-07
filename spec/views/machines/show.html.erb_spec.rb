require 'spec_helper'

describe "machines/show" do
  before(:each) do
    @machine = assign(:machine, stub_model(Machine,
      :code => 1,
      :location => "Location",
      :description => "Description",
      :unit => "",
      :performance => "",
      :unitarycost => 2,
      :quantperunit => "",
      :realcost => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Location/)
    rendered.should match(/Description/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/2/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
