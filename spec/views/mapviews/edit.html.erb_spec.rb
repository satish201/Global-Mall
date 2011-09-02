require 'spec_helper'

describe "mapviews/edit.html.erb" do
  before(:each) do
    @mapview = assign(:mapview, stub_model(Mapview))
  end

  it "renders the edit mapview form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mapviews_path(@mapview), :method => "post" do
    end
  end
end
