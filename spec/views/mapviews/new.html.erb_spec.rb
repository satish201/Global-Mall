require 'spec_helper'

describe "mapviews/new.html.erb" do
  before(:each) do
    assign(:mapview, stub_model(Mapview).as_new_record)
  end

  it "renders new mapview form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mapviews_path, :method => "post" do
    end
  end
end
