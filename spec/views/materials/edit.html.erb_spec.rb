require 'spec_helper'

describe "materials/edit" do
  before(:each) do
    @material = assign(:material, stub_model(Material,
      :code => 1,
      :description => "MyString",
      :unit => "",
      :loss => "",
      :adqvalue => 1,
      :transport => 1,
      :unitarycost => 1,
      :sitevalue => "",
      :realcost => ""
    ))
  end

  it "renders the edit material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => materials_path(@material), :method => "post" do
      assert_select "input#material_code", :name => "material[code]"
      assert_select "input#material_description", :name => "material[description]"
      assert_select "input#material_unit", :name => "material[unit]"
      assert_select "input#material_loss", :name => "material[loss]"
      assert_select "input#material_adqvalue", :name => "material[adqvalue]"
      assert_select "input#material_transport", :name => "material[transport]"
      assert_select "input#material_unitarycost", :name => "material[unitarycost]"
      assert_select "input#material_sitevalue", :name => "material[sitevalue]"
      assert_select "input#material_realcost", :name => "material[realcost]"
    end
  end
end
