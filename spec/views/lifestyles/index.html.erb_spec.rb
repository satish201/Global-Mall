require 'spec_helper'

describe "lifestyles/index.html.erb" do
  before(:each) do
    assign(:lifestyles, [
      stub_model(Lifestyle,
        :description => "MyText"
      ),
      stub_model(Lifestyle,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of lifestyles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
