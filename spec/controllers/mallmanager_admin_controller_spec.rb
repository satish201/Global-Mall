require 'spec_helper'

describe MallmanagerAdminController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new_request'" do
    it "should be successful" do
      get 'new_request'
      response.should be_success
    end
  end

end
