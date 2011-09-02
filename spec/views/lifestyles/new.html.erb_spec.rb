require 'spec_helper'

describe "lifestyles/new.html.erb" do
  before(:each) do
    assign(:lifestyle, stub_model(Lifestyle,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new lifestyle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lifestyles_path, :method => "post" do
      assert_select "textarea#lifestyle_description", :name => "lifestyle[description]"
    end
  end
end
