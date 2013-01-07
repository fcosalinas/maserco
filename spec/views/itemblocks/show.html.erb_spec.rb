require 'spec_helper'

describe "itemblocks/show" do
  before(:each) do
    @itemblock = assign(:itemblock, stub_model(Itemblock,
      :quantity => 1.5,
      :cdi => 1.5,
      :cdo => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
