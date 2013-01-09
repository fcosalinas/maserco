require 'spec_helper'

describe "matrices/show" do
  before(:each) do
    @matrix = assign(:matrix, stub_model(Matrix,
      :Type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
