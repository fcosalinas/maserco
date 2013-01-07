require 'spec_helper'

describe "itemblocks/edit" do
  before(:each) do
    @itemblock = assign(:itemblock, stub_model(Itemblock,
      :quantity => 1.5,
      :cdi => 1.5,
      :cdo => 1.5
    ))
  end

  it "renders the edit itemblock form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => itemblocks_path(@itemblock), :method => "post" do
      assert_select "input#itemblock_quantity", :name => "itemblock[quantity]"
      assert_select "input#itemblock_cdi", :name => "itemblock[cdi]"
      assert_select "input#itemblock_cdo", :name => "itemblock[cdo]"
    end
  end
end
