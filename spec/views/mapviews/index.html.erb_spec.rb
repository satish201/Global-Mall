require 'spec_helper'

describe "mapviews/index.html.erb" do
  before(:each) do
    assign(:mapviews, [
      stub_model(Mapview),
      stub_model(Mapview)
    ])
  end

  it "renders a list of mapviews" do
    render
  end
end
