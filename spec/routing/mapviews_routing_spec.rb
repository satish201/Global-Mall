require "spec_helper"

describe MapviewsController do
  describe "routing" do

    it "routes to #index" do
      get("/mapviews").should route_to("mapviews#index")
    end

    it "routes to #new" do
      get("/mapviews/new").should route_to("mapviews#new")
    end

    it "routes to #show" do
      get("/mapviews/1").should route_to("mapviews#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mapviews/1/edit").should route_to("mapviews#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mapviews").should route_to("mapviews#create")
    end

    it "routes to #update" do
      put("/mapviews/1").should route_to("mapviews#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mapviews/1").should route_to("mapviews#destroy", :id => "1")
    end

  end
end
