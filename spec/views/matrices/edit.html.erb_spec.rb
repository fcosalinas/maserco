require 'spec_helper'

describe "matrices/edit" do
  before(:each) do
    @matrix = assign(:matrix, stub_model(Matrix,
      :Type => "MyString"
    ))
  end

  it "renders the edit matrix form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => matrices_path(@matrix), :method => "post" do
      assert_select "input#matrix_Type", :name => "matrix[Type]"
    end
  end
end
