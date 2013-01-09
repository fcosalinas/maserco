require 'spec_helper'

describe "Controls" do
  describe "GET /controls" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get controls_path
      response.status.should be(200)
    end
  end
end
