require 'spec_helper'

describe "Lifestyels" do
  describe "GET /lifestyels" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lifestyels_path
      response.status.should be(200)
    end
  end
end
