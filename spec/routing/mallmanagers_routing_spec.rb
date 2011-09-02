require "spec_helper"

describe MallmanagersController do
  describe "routing" do

    it "routes to #index" do
      get("/mallmanagers").should route_to("mallmanagers#index")
    end

    it "routes to #new" do
      get("/mallmanagers/new").should route_to("mallmanagers#new")
    end

    it "routes to #show" do
      get("/mallmanagers/1").should route_to("mallmanagers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mallmanagers/1/edit").should route_to("mallmanagers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mallmanagers").should route_to("mallmanagers#create")
    end

    it "routes to #update" do
      put("/mallmanagers/1").should route_to("mallmanagers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mallmanagers/1").should route_to("mallmanagers#destroy", :id => "1")
    end

  end
end
