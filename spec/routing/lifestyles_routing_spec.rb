require "spec_helper"

describe LifestylesController do
  describe "routing" do

    it "routes to #index" do
      get("/lifestyles").should route_to("lifestyles#index")
    end

    it "routes to #new" do
      get("/lifestyles/new").should route_to("lifestyles#new")
    end

    it "routes to #show" do
      get("/lifestyles/1").should route_to("lifestyles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lifestyles/1/edit").should route_to("lifestyles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lifestyles").should route_to("lifestyles#create")
    end

    it "routes to #update" do
      put("/lifestyles/1").should route_to("lifestyles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lifestyles/1").should route_to("lifestyles#destroy", :id => "1")
    end

  end
end
