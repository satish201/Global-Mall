require 'spec_helper'

describe "lifestyels/show.html.erb" do
  before(:each) do
    @lifestyel = assign(:lifestyel, stub_model(Lifestyel,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
