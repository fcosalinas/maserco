require 'spec_helper'

describe "matrices/new" do
  before(:each) do
    assign(:matrix, stub_model(Matrix,
      :Type => "MyString"
    ).as_new_record)
  end

  it "renders new matrix form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => matrices_path, :method => "post" do
      assert_select "input#matrix_Type", :name => "matrix[Type]"
    end
  end
end
