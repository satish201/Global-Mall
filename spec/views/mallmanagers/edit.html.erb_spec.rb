require 'spec_helper'

describe "mallmanagers/edit.html.erb" do
  before(:each) do
    @mallmanager = assign(:mallmanager, stub_model(Mallmanager,
      :username => "MyString",
      :email => "MyString",
      :crypted_password => "MyString",
      :password_salt => "MyString",
      :persistence_token => "MyString"
    ))
  end

  it "renders the edit mallmanager form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mallmanagers_path(@mallmanager), :method => "post" do
      assert_select "input#mallmanager_username", :name => "mallmanager[username]"
      assert_select "input#mallmanager_email", :name => "mallmanager[email]"
      assert_select "input#mallmanager_crypted_password", :name => "mallmanager[crypted_password]"
      assert_select "input#mallmanager_password_salt", :name => "mallmanager[password_salt]"
      assert_select "input#mallmanager_persistence_token", :name => "mallmanager[persistence_token]"
    end
  end
end
