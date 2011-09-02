require 'spec_helper'

describe "lifestyles/show.html.erb" do
  before(:each) do
    @lifestyle = assign(:lifestyle, stub_model(Lifestyle,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
