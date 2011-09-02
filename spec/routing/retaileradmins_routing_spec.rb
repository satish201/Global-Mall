require "spec_helper"

describe RetaileradminsController do
  describe "routing" do

    it "routes to #index" do
      get("/retaileradmins").should route_to("retaileradmins#index")
    end

    it "routes to #new" do
      get("/retaileradmins/new").should route_to("retaileradmins#new")
    end

    it "routes to #show" do
      get("/retaileradmins/1").should route_to("retaileradmins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/retaileradmins/1/edit").should route_to("retaileradmins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/retaileradmins").should route_to("retaileradmins#create")
    end

    it "routes to #update" do
      put("/retaileradmins/1").should route_to("retaileradmins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/retaileradmins/1").should route_to("retaileradmins#destroy", :id => "1")
    end

  end
end
