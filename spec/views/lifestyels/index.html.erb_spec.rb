require 'spec_helper'

describe "lifestyels/index.html.erb" do
  before(:each) do
    assign(:lifestyels, [
      stub_model(Lifestyel,
        :description => "MyText"
      ),
      stub_model(Lifestyel,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of lifestyels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
