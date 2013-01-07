require "spec_helper"

describe ItemblocksController do
  describe "routing" do

    it "routes to #index" do
      get("/itemblocks").should route_to("itemblocks#index")
    end

    it "routes to #new" do
      get("/itemblocks/new").should route_to("itemblocks#new")
    end

    it "routes to #show" do
      get("/itemblocks/1").should route_to("itemblocks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/itemblocks/1/edit").should route_to("itemblocks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/itemblocks").should route_to("itemblocks#create")
    end

    it "routes to #update" do
      put("/itemblocks/1").should route_to("itemblocks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/itemblocks/1").should route_to("itemblocks#destroy", :id => "1")
    end

  end
end
