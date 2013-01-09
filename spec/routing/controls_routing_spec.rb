require "spec_helper"

describe ControlsController do
  describe "routing" do

    it "routes to #index" do
      get("/controls").should route_to("controls#index")
    end

    it "routes to #new" do
      get("/controls/new").should route_to("controls#new")
    end

    it "routes to #show" do
      get("/controls/1").should route_to("controls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/controls/1/edit").should route_to("controls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/controls").should route_to("controls#create")
    end

    it "routes to #update" do
      put("/controls/1").should route_to("controls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/controls/1").should route_to("controls#destroy", :id => "1")
    end

  end
end
