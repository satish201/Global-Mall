require "spec_helper"

describe LifestyelsController do
  describe "routing" do

    it "routes to #index" do
      get("/lifestyels").should route_to("lifestyels#index")
    end

    it "routes to #new" do
      get("/lifestyels/new").should route_to("lifestyels#new")
    end

    it "routes to #show" do
      get("/lifestyels/1").should route_to("lifestyels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lifestyels/1/edit").should route_to("lifestyels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lifestyels").should route_to("lifestyels#create")
    end

    it "routes to #update" do
      put("/lifestyels/1").should route_to("lifestyels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lifestyels/1").should route_to("lifestyels#destroy", :id => "1")
    end

  end
end
