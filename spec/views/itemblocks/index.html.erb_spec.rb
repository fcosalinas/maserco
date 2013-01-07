require 'spec_helper'

describe "itemblocks/index" do
  before(:each) do
    assign(:itemblocks, [
      stub_model(Itemblock,
        :quantity => 1.5,
        :cdi => 1.5,
        :cdo => 1.5
      ),
      stub_model(Itemblock,
        :quantity => 1.5,
        :cdi => 1.5,
        :cdo => 1.5
      )
    ])
  end

  it "renders a list of itemblocks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
