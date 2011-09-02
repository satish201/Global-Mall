require 'spec_helper'

describe "lifestyels/new.html.erb" do
  before(:each) do
    assign(:lifestyel, stub_model(Lifestyel,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new lifestyel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lifestyels_path, :method => "post" do
      assert_select "textarea#lifestyel_description", :name => "lifestyel[description]"
    end
  end
end
