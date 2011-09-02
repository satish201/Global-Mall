require 'spec_helper'

describe "lifestyles/edit.html.erb" do
  before(:each) do
    @lifestyle = assign(:lifestyle, stub_model(Lifestyle,
      :description => "MyText"
    ))
  end

  it "renders the edit lifestyle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lifestyles_path(@lifestyle), :method => "post" do
      assert_select "textarea#lifestyle_description", :name => "lifestyle[description]"
    end
  end
end
