require 'spec_helper'

describe "matrices/index" do
  before(:each) do
    assign(:matrices, [
      stub_model(Matrix,
        :Type => "Type"
      ),
      stub_model(Matrix,
        :Type => "Type"
      )
    ])
  end

  it "renders a list of matrices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
