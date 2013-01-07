require 'spec_helper'

describe "others/show" do
  before(:each) do
    @other = assign(:other, stub_model(Other,
      :description => "Description",
      :quantity => "",
      :unitarycost => "",
      :cost => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
