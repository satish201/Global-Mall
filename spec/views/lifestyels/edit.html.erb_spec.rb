require 'spec_helper'

describe "lifestyels/edit.html.erb" do
  before(:each) do
    @lifestyel = assign(:lifestyel, stub_model(Lifestyel,
      :description => "MyText"
    ))
  end

  it "renders the edit lifestyel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lifestyels_path(@lifestyel), :method => "post" do
      assert_select "textarea#lifestyel_description", :name => "lifestyel[description]"
    end
  end
end
