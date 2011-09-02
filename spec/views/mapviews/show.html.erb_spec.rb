require 'spec_helper'

describe "mapviews/show.html.erb" do
  before(:each) do
    @mapview = assign(:mapview, stub_model(Mapview))
  end

  it "renders attributes in <p>" do
    render
  end
end
