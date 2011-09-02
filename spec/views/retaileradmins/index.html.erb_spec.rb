require 'spec_helper'

describe "retaileradmins/index.html.erb" do
  before(:each) do
    assign(:retaileradmins, [
      stub_model(Retaileradmin,
        :username => "Username",
        :email => "Email",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :persistence_token => "Persistence Token"
      ),
      stub_model(Retaileradmin,
        :username => "Username",
        :email => "Email",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :persistence_token => "Persistence Token"
      )
    ])
  end

  it "renders a list of retaileradmins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Crypted Password".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password Salt".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Persistence Token".to_s, :count => 2
  end
end
