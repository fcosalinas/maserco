require "spec_helper"

describe WeeksheetsController do
  describe "routing" do

    it "routes to #index" do
      get("/weeksheets").should route_to("weeksheets#index")
    end

    it "routes to #new" do
      get("/weeksheets/new").should route_to("weeksheets#new")
    end

    it "routes to #show" do
      get("/weeksheets/1").should route_to("weeksheets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/weeksheets/1/edit").should route_to("weeksheets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/weeksheets").should route_to("weeksheets#create")
    end

    it "routes to #update" do
      put("/weeksheets/1").should route_to("weeksheets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/weeksheets/1").should route_to("weeksheets#destroy", :id => "1")
    end

  end
end
